import consumer from "./consumer"

const dataChannel = consumer.subscriptions.create("DataChannel", {
  connected() {
    console.log("Connection created.")
  },

  disconnected() {
    console.log("Connection destroyed")
  },
  
  load() {
    this.perform("load")
  }
});

export default dataChannel;
