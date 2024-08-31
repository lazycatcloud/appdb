<?php

namespace App\Values;

use App\Models\Album;
use App\Models\Artist;
use Illuminate\Contracts\Support\Arrayable;
use Illuminate\Support\Arr;
// use Illuminate\Support\Facades\Log;

final class SongScanInformation implements Arrayable
{
    private function __construct(
        public ?string $title,
        public ?string $albumName,
        public ?string $artistName,
        public ?string $albumArtistName,
        public ?int $track,
        public ?int $disc,
        public ?int $year,
        public ?string $genre,
        public ?string $lyrics,
        public ?float $length,
        public ?array $cover,
        public ?string $path,
        public ?int $mTime,
    ) {
    }

    public static function fromGetId3Info(array $info, string $path): self
    {
        // We prefer ID3v2 tags over ID3v1 tags.
        $tags = array_merge(
            Arr::get($info, 'tags.id3v1', []),
            Arr::get($info, 'tags.id3v2', []),
            Arr::get($info, 'comments', []),
        );

        $comments = Arr::get($info, 'comments', []);

        $albumArtistName = self::getTag($tags, ['albumartist', 'album_artist', 'band']);

        // If the song is explicitly marked as a compilation but there's no album artist name, use the umbrella
        // "Various Artists" artist.
        if (self::getTag($tags, 'part_of_a_compilation') && !$albumArtistName) {
            $albumArtistName = Artist::VARIOUS_NAME;
        }

        $cover = [self::getTag($comments, 'cover', null)];

        if ($cover[0] === null) {
            $cover = self::getTag($comments, 'picture', []);
        }

        $lyrics = html_entity_decode(self::getTag($tags, [
            'unsynchronised_lyric',
            'unsychronised_lyric',
            'unsyncedlyrics',
        ]));

        $__title_d  = self::getTag($tags, 'title', pathinfo($path, PATHINFO_FILENAME));
        $__album_d  = self::getTag($tags, 'album', Album::UNKNOWN_NAME);
        $__artist_d = self::getTag($tags, 'artist', Artist::UNKNOWN_NAME);

        // 处理 GB2312 字符编码问题
        $raw_tags = array_merge(
            Arr::get($info, 'id3v1', []),
            Arr::get($info, 'id3v2', []),
            Arr::get($comments, 'id3v2', [])
        );

        $__title  = self::encodingGBKorUTF8($raw_tags['title'], $__title_d);
        $__album  = self::encodingGBKorUTF8($raw_tags['album'], $__album_d);
        $__artist = self::encodingGBKorUTF8($raw_tags['artist'], $__artist_d);
        if ($__album != $__album_d) {
            $albumArtistName = Artist::VARIOUS_NAME;
        }

        // Log::debug(var_export($__title, true));
        // Log::debug(var_export($__album, true));
        // Log::debug(var_export($__artist, true));
        // Log::debug(var_export($albumArtistName, true));

        return new self(
            title: html_entity_decode($__title, ENT_QUOTES | ENT_SUBSTITUTE),
            albumName: html_entity_decode($__album, ENT_QUOTES | ENT_SUBSTITUTE),
            artistName: html_entity_decode($__artist, ENT_QUOTES | ENT_SUBSTITUTE),
            albumArtistName: html_entity_decode($albumArtistName, ENT_QUOTES | ENT_SUBSTITUTE),
            track: (int) self::getTag($tags, ['track', 'tracknumber', 'track_number']),
            disc: (int) self::getTag($tags, ['discnumber', 'part_of_a_set'], 1),
            year: (int) self::getTag($tags, 'year') ?: null,
            genre: self::getTag($tags, 'genre'),
            lyrics: $lyrics,
            length: (float) Arr::get($info, 'playtime_seconds'),
            cover: $cover,
            path: $path,
            mTime: get_mtime($path)
        );
    }

    private static function encodingGBKorUTF8(mixed $bytes, $default = ''): string
    {
        if (!$bytes) {
            return $default;
        }
        $encoding = mb_detect_encoding($bytes, ['EUC-CN', 'GB2312', 'UTF-8', 'ISO-8859-1', 'ASCII'], true);
        $isGBK    = $encoding === 'EUC-CN' || $encoding === 'GB2312';
        return $isGBK ? mb_convert_encoding($bytes, 'UTF-8', 'GB2312') : $default;
    }

    private static function getTag(array $arr, string | array $keys, $default = ''): mixed
    {
        $keys = Arr::wrap($keys);

        for ($i = 0, $j = count($keys); $i < $j; ++$i) {
            $value = Arr::get($arr, $keys[$i] . '.0');

            if ($value) {
                break;
            }
        }

        return $value ?? $default;
    }

    /** @return array<mixed> */
    public function toArray(): array
    {
        return [
            'title' => $this->title,
            'album' => $this->albumName,
            'artist' => $this->artistName,
            'albumartist' => $this->albumArtistName,
            'track' => $this->track,
            'disc' => $this->disc,
            'year' => $this->year,
            'genre' => $this->genre,
            'lyrics' => $this->lyrics,
            'length' => $this->length,
            'cover' => $this->cover,
            'path' => $this->path,
            'mtime' => $this->mTime,
        ];
    }
}
