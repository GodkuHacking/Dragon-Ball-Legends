.class Lcom/facebook/gamingservices/ContextCreateDialog$3;
.super Ljava/lang/Object;
.source "ContextCreateDialog.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/ContextCreateDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/ContextCreateDialog;

.field final synthetic val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method constructor <init>(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$resultProcessor"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/facebook/gamingservices/ContextCreateDialog$3;->this$0:Lcom/facebook/gamingservices/ContextCreateDialog;

    iput-object p2, p0, Lcom/facebook/gamingservices/ContextCreateDialog$3;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "data"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/facebook/gamingservices/ContextCreateDialog$3;->this$0:Lcom/facebook/gamingservices/ContextCreateDialog;

    .line 195
    invoke-virtual {v0}, Lcom/facebook/gamingservices/ContextCreateDialog;->getRequestCode()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/gamingservices/ContextCreateDialog$3;->val$resultProcessor:Lcom/facebook/share/internal/ResultProcessor;

    .line 194
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result p1

    return p1
.end method
