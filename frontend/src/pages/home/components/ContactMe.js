import React, { Component } from "react";
import { render } from "react-dom";
import icons from "../../../assets/icons";
import variables from "../../../variables";

class ContactMe extends Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    const form = document.querySelector("#contact-me-form");

    form.addEventListener("submit", (event) => {
      event.preventDefault();

      const formAlert = document.getElementById("form-alert");

      render(<SendFormLoader />, formAlert);

      const data = new FormData(form);
      fetch(`${variables.env.BACKEND_URL}/api/contact-me`, { method: "POST", body: data })
        .then((response) => response.json())
        .then((data) => {
          console.log(data);
          if (data.status == true) {
            render(
              <SendFormAlert
                variant="success"
                title="Message sent!"
                desc="Thank you for the message :)"
              />,
              formAlert
            );
          } else {
            render(
              <SendFormAlert
                variant="danger"
                title="Failed to send message!"
                desc="Please try again T_T"
              />,
              formAlert
            );
          }
        })
        .catch((error) => {
          console.warn("ERROR:", error);
          render(
            <SendFormAlert
              variant="danger"
              title="Failed to send message!"
              desc="Please try again T_T"
            />,
            formAlert
          );
        });
    });
  }

  render() {
    const { isMobile } = this.props;

    return (
      <form
        id="contact-me-form"
        style={{ width: isMobile ? "80%" : 600, margin: "50px auto 75px", position: "relative" }}
      >
        <h3 className="text-center">CONTACT ME</h3>
        <div className="mb-3 d-flex">
          <FormIcon icon={icons.personFill} />
          <TextInput required type="text" name="name" placeholder="Name" />
        </div>

        <div className="mb-3 d-flex">
          <FormIcon icon={icons.envelopeFIll} />
          <TextInput type="email" name="email" placeholder="Email address" />
        </div>

        <div className="mb-3">
          <label htmlFor="message" className="form-label">
            Message
          </label>
          <textarea
            required
            name="message"
            className="form-control"
            id="message"
            rows="3"
            placeholder="Type your message here..."
            style={{ resize: "none" }}
          ></textarea>
        </div>

        <div id="form-alert"></div>

        <div className="mx-1">
          <button type="submit" className="btn btn-primary" style={{ width: "100%" }}>
            Send
          </button>
        </div>
      </form>
    );
  }
}

function FormIcon(props) {
  return (
    <div
      style={{
        padding: 10,
        paddingTop: 5,
        backgroundColor: "#fff",
        borderTopLeftRadius: 4,
        borderBottomLeftRadius: 4,
      }}
    >
      <img src={props.icon} alt="Name" />
    </div>
  );
}

function TextInput({ ...attribute }) {
  return (
    <input
      className="form-control"
      style={{ borderTopLeftRadius: 0, borderBottomLeftRadius: 0 }}
      {...attribute}
    />
  );
}

function SendFormLoader() {
  return (
    <div style={{ display: "flex", justifyContent: "center", marginTop: -6, marginBottom: 14 }}>
      <div className="spinner-grow" role="status" style={{ width: 120, height: 30 }}></div>
    </div>
  );
}

function SendFormAlert(props) {
  return (
    <div className={`alert alert-${props.variant} alert-dismissible fade show`} role="alert">
      <b className={`text-${props.variant}`}>{props.title}</b>
      <br />
      {props.desc}
      <button
        type="button"
        className="btn-close"
        data-bs-dismiss="alert"
        aria-label="Close"
      ></button>
    </div>
  );
}

export default ContactMe;
