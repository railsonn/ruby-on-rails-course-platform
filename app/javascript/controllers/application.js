import { Application } from "@hotwired/stimulus"

const application = Application.start()

import "trix/dist/trix"

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
