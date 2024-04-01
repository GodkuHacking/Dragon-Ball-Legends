.class Lcom/facebook/unity/FBUnityGameRequestActivity$1;
.super Ljava/lang/Object;
.source "FBUnityGameRequestActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FBUnityGameRequestActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/gamingservices/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/unity/FBUnityGameRequestActivity;

.field final synthetic val$response:Lcom/facebook/unity/UnityMessage;


# direct methods
.method constructor <init>(Lcom/facebook/unity/FBUnityGameRequestActivity;Lcom/facebook/unity/UnityMessage;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->this$0:Lcom/facebook/unity/FBUnityGameRequestActivity;

    iput-object p2, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->putCancelled()Lcom/facebook/unity/UnityMessage;

    .line 120
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 121
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->this$0:Lcom/facebook/unity/FBUnityGameRequestActivity;

    invoke-virtual {v0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->this$0:Lcom/facebook/unity/FBUnityGameRequestActivity;

    invoke-virtual {p1}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/gamingservices/GameRequestDialog$Result;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/gamingservices/GameRequestDialog$Result;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 112
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/gamingservices/GameRequestDialog$Result;->getRequestRecipients()Ljava/util/List;

    move-result-object p1

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 113
    iget-object p1, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 114
    iget-object p1, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->this$0:Lcom/facebook/unity/FBUnityGameRequestActivity;

    invoke-virtual {p1}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Lcom/facebook/gamingservices/GameRequestDialog$Result;

    invoke-virtual {p0, p1}, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->onSuccess(Lcom/facebook/gamingservices/GameRequestDialog$Result;)V

    return-void
.end method
