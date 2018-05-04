# Run your Lita chatbot on Digital Ocean using Docker

What you need: 

- A Slack API token
- A modest Digital Ocean VPS running the latest Docker-compatible easy distribution. This was the "Docker 17 on 16.04" droplet type as of May 2018:

![Screenshot of the proper droplet type as of May 2018](img/droplet-type-screenshot.png)

## How to run this:

Download the repo and run the bootstrap script:

```sh
git clone https://github.com/dpritchett/chatbot-up-and-running.git`
cd chatbot-up-and-running

./bootstrap_server.sh
```

## Note on SSH access:

If you don't have an SSH agent running on your local box you'll need to type in your DO root password a handful of times while stepping through the bootstrap script. I recommend you get your Droplet created with your public key so you can skip all of that.
