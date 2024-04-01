.class public final synthetic Lcom/facebook/login/-$$Lambda$CustomTabLoginMethodHandler$0BMF4P_RxQCfsUXf0Xd3ErROU8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/login/CustomTabLoginMethodHandler;

.field public final synthetic f$1:Lcom/facebook/login/LoginClient$Request;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/-$$Lambda$CustomTabLoginMethodHandler$0BMF4P_RxQCfsUXf0Xd3ErROU8g;->f$0:Lcom/facebook/login/CustomTabLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/-$$Lambda$CustomTabLoginMethodHandler$0BMF4P_RxQCfsUXf0Xd3ErROU8g;->f$1:Lcom/facebook/login/LoginClient$Request;

    iput-object p3, p0, Lcom/facebook/login/-$$Lambda$CustomTabLoginMethodHandler$0BMF4P_RxQCfsUXf0Xd3ErROU8g;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/-$$Lambda$CustomTabLoginMethodHandler$0BMF4P_RxQCfsUXf0Xd3ErROU8g;->f$0:Lcom/facebook/login/CustomTabLoginMethodHandler;

    iget-object v1, p0, Lcom/facebook/login/-$$Lambda$CustomTabLoginMethodHandler$0BMF4P_RxQCfsUXf0Xd3ErROU8g;->f$1:Lcom/facebook/login/LoginClient$Request;

    iget-object v2, p0, Lcom/facebook/login/-$$Lambda$CustomTabLoginMethodHandler$0BMF4P_RxQCfsUXf0Xd3ErROU8g;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/login/CustomTabLoginMethodHandler;->lambda$0BMF4P_RxQCfsUXf0Xd3ErROU8g(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    return-void
.end method
