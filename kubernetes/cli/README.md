# Deploying nsot ipam from dropbox via kubectl cli
- Run the nsot.sh or copy paste the commands into your console where kubectl is configured to Run.
- Run `kubectl get svc | grep nsot` & find the exposed port on which it is available.
    ex:- 8990:<exposed port>/TCP
- nsot is now available at <cluster ip>:<exposed port>

# create user and login
 - `kubectl get pod | grep nsot` to list the nsot pod
 - `kubectl exec -it <nsot pod name> -- /bin/bash` to open an interactive shell
 - `nsot-server --config=/etc/nsot/nsot.conf.py createsuperuser` creates a super user.
    provide an email and password. The same can be now used to log into the nsot ipam.

# Removing nsot
Run the remove_nsot.sh or do the following
- Remove nsot deployment
    `kubectl delete deployment nsot`
- Remove nsot service
    `kubectl delete service nsot`
