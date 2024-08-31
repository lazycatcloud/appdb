package main

type ffmpeg struct {
	Drf              int64  `json:"crf"`
	MaxBitrate       string `json:"maxBitrate"`
	Preset           string `json:"preset"`
	TargetAudioCodec string `json:"targetAudioCodec"`
	TargetResolution string `json:"targetResolution"`
	TargetVideoCodec string `json:"targetVideoCodec"`
	Threads          int64  `json:"threads"`
	Transcode        string `json:"transcode"`
	TwoPass          bool   `json:"twoPass"`
}

type jobCon struct {
	Concurrency int64 `json:"concurrency"`
}
type job struct {
	BackgroundTask           jobCon `json:"backgroundTask"`
	ClipEncoding             jobCon `json:"clipEncoding"`
	MetadataExtraction       jobCon `json:"metadataExtraction"`
	ObjectTagging            jobCon `json:"objectTagging"`
	RecognizeFaces           jobCon `json:"recognizeFaces"`
	Search                   jobCon `json:"search"`
	Sidecar                  jobCon `json:"sidecar"`
	StorageTemplateMigration jobCon `json:"storageTemplateMigration"`
	ThumbnailGeneration      jobCon `json:"thumbnailGeneration"`
	VideoConversion          jobCon `json:"videoConversion"`
}

type oauth struct {
	Enabled               bool   `json:"enabled"`
	IssuerUrl             string `json:"issuerUrl"`
	ClientId              string `json:"clientId"`
	ClientSecret          string `json:"clientSecret"`
	MobileOverrideEnabled bool   `json:"mobileOverrideEnabled"`
	MobileRedirectUri     string `json:"mobileRedirectUri"`
	Scope                 string `json:"scope"`
	ButtonText            string `json:"buttonText"`
	AutoRegister          bool   `json:"autoRegister"`
	AutoLaunch            bool   `json:"autoLaunch"`
}

type passwordLogin struct {
	Enabled bool `json:"enabled"`
}

type storageTemplate struct {
	Template string `json:"template"`
}

type OauthConfig struct {
	Ffmpeg          ffmpeg          `json:"ffmpeg"`
	Job             job             `json:"job"`
	Oauth           oauth           `json:"oauth"`
	PasswordLogin   passwordLogin   `json:"passwordLogin"`
	StorageTemplate storageTemplate `json:"storageTemplate"`
}
