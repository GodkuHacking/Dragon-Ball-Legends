.class Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin$4$2;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/gree/unitywebview/CWebViewPlugin$4$2;

.field final synthetic val$setCookieHeaders:Ljava/util/List;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin$4$2;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;->this$2:Lnet/gree/unitywebview/CWebViewPlugin$4$2;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;->val$setCookieHeaders:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 680
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;->this$2:Lnet/gree/unitywebview/CWebViewPlugin$4$2;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;->val$setCookieHeaders:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lnet/gree/unitywebview/CWebViewPlugin;->SetCookies(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
