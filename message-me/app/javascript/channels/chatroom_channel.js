import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    var element = document.getElementById('message')
    const para = document.createElement("div");
    para.textContent = data.data1.username+" "+":"+" "+data.data.message_body;
    para.style='font-weight:bold'
    element.appendChild(para);
  }
});
