"use strict"

async function createPerson() {
  const data = {
    fname: $("#new-fname").val(),
    lname: $("#new-lname").val(),
    email: $("#new-email").val(),
    banner_id: $("#new-banner-id").val()
  }
   console.log(data);

  await personAjax("/people/create", data);
  $("#new-person-modal").modal("toggle");
  $(':input','#new-person-form')
  .not(':button, :submit, :reset, :hidden')
  .val('')
  .prop('checked', false)
  .prop('selected', false);
}

async function readPeople(search) {
  console.log("changed");
  console.log(search);
  const people = await personAjax("/people/read", {search});

  $("#people-list").empty();

  people.forEach(function (person) {
    $("#people-list").append(
    `
    <div class="list-group">
      <a href="#" id="person-${person.person_id}" class="list-group-item person-item">
        <h4 class="list-group-item-heading">${person.fname} ${person.lname}</h4>
        <p class="list-group-item-text">Email: ${person.email}</p>
        <p class="list-group-item-text">Banner Id: ${person.banner_id}</p>
      </a>
    </div>
    `);
  });
}

async function updatePerson(user) {

}

async function deletePerson(userId) {

}

function personAjax(url, data) {

  return new Promise(function(resolve, reject) {
    console.log(url)
    console.log(data)
    $.ajax({
      url,
      data,
      type: "POST",
      dataType: "json",
      success: function(res) {
        console.log(res);
        resolve(res);
      },
      error: function(res) {
        console.log(res);
        reject(res);
      }
    });

  });

}

$(document).ready(function () {
});
