package main

import "mrh_snippetbox.duh.io/internal/models"

// Include a Snippets field in the templateData struct.
type templateData struct {
	Snippet  models.Snippet
	Snippets []models.Snippet
}
