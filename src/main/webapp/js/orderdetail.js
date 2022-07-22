getOrderDetail();

function getOrderDetail() {
  $.ajax({
    url: `/orders/${orderNo}`,
    type: "GET",
    success: function (response) {
      console.log(response);

    },
    error: function (err) {
      console.log(err);

    }
  });
}