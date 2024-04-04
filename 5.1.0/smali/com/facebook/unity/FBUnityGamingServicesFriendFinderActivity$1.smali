.class Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;
.super Ljava/lang/Object;
.source "FBUnityGamingServicesFriendFinderActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/gamingservices/FriendFinderDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;

.field final synthetic val$response:Lcom/facebook/unity/UnityMessage;


# direct methods
.method constructor <init>(Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;Lcom/facebook/unity/UnityMessage;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->this$0:Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;

    iput-object p2, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->putCancelled()Lcom/facebook/unity/UnityMessage;

    .line 61
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 62
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->this$0:Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;

    invoke-virtual {v0}, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->this$0:Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;

    invoke-virtual {p1}, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/gamingservices/FriendFinderDialog$Result;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 54
    iget-object p1, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 55
    iget-object p1, p0, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->this$0:Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;

    invoke-virtual {p1}, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/facebook/gamingservices/FriendFinderDialog$Result;

    invoke-virtual {p0, p1}, Lcom/facebook/unity/FBUnityGamingServicesFriendFinderActivity$1;->onSuccess(Lcom/facebook/gamingservices/FriendFinderDialog$Result;)V

    return-void
.end method
