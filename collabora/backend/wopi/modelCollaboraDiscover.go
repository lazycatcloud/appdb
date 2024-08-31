package wopi

import "encoding/xml"

type app struct {
	XMLName xml.Name `xml:"app"`
	Name    string   `xml:"name,attr"`
	Action  []action `xml:"action"`
}
type action struct {
	XMLName xml.Name `xml:"action"`
	Name    string   `xml:"name,attr"`
	Ext     string   `xml:"ext,attr"`
	Default string   `xml:"default,attr"`
	Urlsrc  string   `xml:"urlsrc,attr"`
}
type netZone struct {
	XMLName xml.Name `xml:"net-zone"`
	Name    string   `xml:"name,attr"`
	App     []app    `xml:"app"`
}

type proofKey struct {
	XMLName     xml.Name `xml:"proof-key"`
	Exponent    string   `xml:"exponent,attr"`
	Modulus     string   `xml:"modulus,attr"`
	Oldexponent string   `xml:"oldexponent,attr"`
	Oldmodulus  string   `xml:"oldmodulus,attr"`
	Oldvalue    string   `xml:"oldvalue,attr"`
	Value       string   `xml:"value,attr"`
}
type WopiDiscovery struct {
	XMLName  xml.Name `xml:"wopi-discovery"`
	NetZone  netZone  `xml:"net-zone"`
	ProofKey proofKey `xml:"proof-key"`
}

func (d *WopiDiscovery) matchUrlByMime(mimeType string) string {
	if d == nil {
		return ""
	}
	if len(d.NetZone.App) <= 0 {
		return ""
	}
	for _, app := range d.NetZone.App {
		if app.Name == mimeType {
			if len(app.Action) > 0 {
				return app.Action[0].Urlsrc
			} else {
				break
			}
		}
	}
	return ""
}
func (d *WopiDiscovery) matchUrlByExt(ext string) string {
	if d == nil {
		return ""
	}
	if len(d.NetZone.App) <= 0 {
		return ""
	}
	for _, app := range d.NetZone.App {
		if len(app.Action) < 1 {
			break
		}
		for _, action := range app.Action {
			if action.Ext == ext {
				return action.Urlsrc
			}
		}
	}
	return ""
}
