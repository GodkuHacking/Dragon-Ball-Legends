.class Lnet/gree/unitywebview/CWebViewPlugin$20;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->SetMicrophoneAccess(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$allowed:Z


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$20;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-boolean p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$20;->val$allowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1176
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$20;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-boolean v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$20;->val$allowed:Z

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    return-void
.end method
