<!--

Thank you for participating with our effort to build a more secure software supply chain.
Before submitting your Pull Request, please go over our checklist.

-->

## Description

<!--

Try to fill in the following to help the reviewers dive into the pull request.
Explain the context and what changed.

-->

Fixes pyrsia/pyrsia#

This PR does... by accomplishing... and it can be reviewed by... you can also test the changes by running...

## Screenshots (optional)

## PR Checklist

<!-- Make certain you've done the following. -->

- [ ] I've read the [contributing guidelines](https://github.com/pyrsia/.github/blob/main/contributing.md).
- [ ] I've read ["What is a Good PR?"](https://github.com/pyrsia/pyrsia/blob/main/docs/community/get_involved/good_pr.md)
- [ ] I've included a good title and brief description along with how to review them.
- [ ] I've linked any associated an [issue](https://github.com/pyrsia/pyrsia/issues).

### Code Contributions

<!--

This section applies to code modifications, you may remove it otherwise.

Make sure your Pull Request will pass the CI/CD pipeline.
For a complete list of steps, check out the [developer PR guidlines](https://github.com/pyrsia/pyrsia/blob/main/docs/community/get_involved/submit_pr.md)!

-->

- [ ] I've made sure my HomeBrew is current and updated.
- [ ] I've installed the installer from my own repo using `brew tap <your_account>/pyrsia` and `brew install pyrsia`
- [ ] I've run the unit tests `brew test pyrsia` and there is no error reported.
- [ ] I've successfully started Pyrsia service using `brew services start pyrsia`. I have checked service status 
using `brew services list` and found it in running state.
- [ ] I've successfully stopped Pyrsia service `brew services stop pyrsia`.
