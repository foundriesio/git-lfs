## git lfs

Git with [Large File Storage](https://git-lfs.github.com/) (LFS) support for
Google Cloud Build.

Once the `git-lfs` image is built, you can use it inside your `cloudbuild.yaml`
as a normal `git` step or passing `lfs` commands.

## Build

Submit this repository to be build by Google Cloud Build:

  gcloud builds submit .

#### Download git-lfs tracked resources

Inside a repository cloned with git without lfs support:

```yaml
- name: 'gcr.io/$PROJECT_ID/git-lfs'
  args: ['lfs', 'pull']
```
