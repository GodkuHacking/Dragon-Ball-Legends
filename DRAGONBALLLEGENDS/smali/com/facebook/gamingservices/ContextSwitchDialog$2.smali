.class Lcom/facebook/gamingservices/ContextSwitchDialog$2;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "ContextSwitchDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/ContextSwitchDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/ContextSwitchDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/gamingservices/ContextSwitchDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "arg0",
            "val$callback"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$2;->this$0:Lcom/facebook/gamingservices/ContextSwitchDialog;

    iput-object p3, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appCall",
            "results"
        }
    .end annotation

    if-eqz p2, :cond_3

    const-string p1, "error_message"

    .line 171
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$2;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    return-void

    :cond_0
    const-string p1, "id"

    .line 175
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Lcom/facebook/gamingservices/GamingContext;

    .line 177
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/gamingservices/GamingContext;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Lcom/facebook/gamingservices/GamingContext;->setCurrentGamingContext(Lcom/facebook/gamingservices/GamingContext;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$2;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v2, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;

    .line 179
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;-><init>(Ljava/lang/String;Lcom/facebook/gamingservices/ContextSwitchDialog$1;)V

    .line 178
    invoke-interface {v0, v2}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "context_id"

    .line 180
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    new-instance v0, Lcom/facebook/gamingservices/GamingContext;

    .line 183
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/gamingservices/GamingContext;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-static {v0}, Lcom/facebook/gamingservices/GamingContext;->setCurrentGamingContext(Lcom/facebook/gamingservices/GamingContext;)V

    .line 184
    iget-object v0, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$2;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v2, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;

    .line 185
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;-><init>(Ljava/lang/String;Lcom/facebook/gamingservices/ContextSwitchDialog$1;)V

    .line 184
    invoke-interface {v0, v2}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    .line 187
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$2;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Invalid response received from server."

    .line 189
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 191
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/ContextSwitchDialog$2;->onCancel(Lcom/facebook/internal/AppCall;)V

    :goto_1
    return-void
.end method
