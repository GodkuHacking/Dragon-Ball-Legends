.class Lnet/gree/unitywebview/CWebViewPlugin$7;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->SetURLPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$allow:Ljava/util/regex/Pattern;

.field final synthetic val$deny:Ljava/util/regex/Pattern;

.field final synthetic val$hook:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->val$allow:Ljava/util/regex/Pattern;

    iput-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->val$deny:Ljava/util/regex/Pattern;

    iput-object p4, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->val$hook:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 991
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->val$allow:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2002(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 992
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->val$deny:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2102(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 993
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$7;->val$hook:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2202(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    return-void
.end method
