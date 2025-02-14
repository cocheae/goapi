package models

type Bar struct {
	BarDetails struct {
		Name    string `json:"name"`
		Address string `json:"address"`
		Url     string `json:"url"`
	} `json:"bar_details"`

	Events []struct {
		Date      string `json:"date"`
		EventName string `json:"event_name"`
		Cover     bool   `json:"cover"`
	} `json:"events"`
}
