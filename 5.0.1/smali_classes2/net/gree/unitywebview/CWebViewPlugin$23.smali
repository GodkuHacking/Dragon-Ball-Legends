.class Lnet/gree/unitywebview/CWebViewPlugin$23;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->Resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$23;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1215
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$23;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$23;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1219
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$23;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    return-void
.end method