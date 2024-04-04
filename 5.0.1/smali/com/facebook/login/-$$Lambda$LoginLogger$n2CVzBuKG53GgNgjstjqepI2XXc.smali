.class public final synthetic Lcom/facebook/login/-$$Lambda$LoginLogger$n2CVzBuKG53GgNgjstjqepI2XXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/login/LoginLogger;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/LoginLogger;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/-$$Lambda$LoginLogger$n2CVzBuKG53GgNgjstjqepI2XXc;->f$0:Lcom/facebook/login/LoginLogger;

    iput-object p2, p0, Lcom/facebook/login/-$$Lambda$LoginLogger$n2CVzBuKG53GgNgjstjqepI2XXc;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/-$$Lambda$LoginLogger$n2CVzBuKG53GgNgjstjqepI2XXc;->f$0:Lcom/facebook/login/LoginLogger;

    iget-object v1, p0, Lcom/facebook/login/-$$Lambda$LoginLogger$n2CVzBuKG53GgNgjstjqepI2XXc;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/login/LoginLogger;->lambda$n2CVzBuKG53GgNgjstjqepI2XXc(Lcom/facebook/login/LoginLogger;Landroid/os/Bundle;)V

    return-void
.end method
