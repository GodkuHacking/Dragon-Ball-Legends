.class Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;
.super Ljava/lang/Object;
.source "FBUnityCreateGameGroupActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FBUnityCreateGameGroupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/unity/FBUnityCreateGameGroupActivity;

.field final synthetic val$response:Lcom/facebook/unity/UnityMessage;


# direct methods
.method constructor <init>(Lcom/facebook/unity/FBUnityCreateGameGroupActivity;Lcom/facebook/unity/UnityMessage;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;->this$0:Lcom/facebook/unity/FBUnityCreateGameGroupActivity;

    iput-object p2, p0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->putCancelled()Lcom/facebook/unity/UnityMessage;

    .line 87
    iget-object v0, p0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/widget/CreateAppGroupDialog$Result;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 81
    iget-object p1, p0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;

    invoke-virtual {p0, p1}, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;->onSuccess(Lcom/facebook/share/widget/CreateAppGroupDialog$Result;)V

    return-void
.end method
