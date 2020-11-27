import ApplicationController from './application_controller'

export default class extends ApplicationController {

  afterReflex (element, reflex) {
    console.log("after reflex");
  }

}
