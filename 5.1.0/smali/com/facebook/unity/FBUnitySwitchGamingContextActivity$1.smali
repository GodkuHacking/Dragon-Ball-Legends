.class Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;
.super Ljava/lang/Object;
.source "FBUnitySwitchGamingContextActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/gamingservices/ContextSwitchDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;

.field final synthetic val$response:Lcom/facebook/unity/UnityMessage;


# direct methods
.method constructor <init>(Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;Lcom/facebook/unity/UnityMessage;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->this$0:Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;

    iput-object p2, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->putCancelled()Lcom/facebook/unity/UnityMessage;

    .line 66
    iget-object v0, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 67
    iget-object v0, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->this$0:Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;

    invoke-virtual {v0}, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;->finish()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->this$0:Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;

    invoke-virtual {p1}, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/gamingservices/ContextSwitchDialog$Result;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->getContextID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "contextId"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 59
    iget-object p1, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 60
    iget-object p1, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->this$0:Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;

    invoke-virtual {p1}, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;

    invoke-virtual {p0, p1}, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;->onSuccess(Lcom/facebook/gamingservices/ContextSwitchDialog$Result;)V

    return-void
.end method
