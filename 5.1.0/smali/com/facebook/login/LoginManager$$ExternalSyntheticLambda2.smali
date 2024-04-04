.class public final synthetic Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/facebook/login/LoginLogger;

.field public final synthetic f$2:Lcom/facebook/LoginStatusCallback;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;->f$1:Lcom/facebook/login/LoginLogger;

    iput-object p3, p0, Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;->f$2:Lcom/facebook/LoginStatusCallback;

    iput-object p4, p0, Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final completed(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;->f$1:Lcom/facebook/login/LoginLogger;

    iget-object v2, p0, Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;->f$2:Lcom/facebook/LoginStatusCallback;

    iget-object v3, p0, Lcom/facebook/login/LoginManager$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/login/LoginManager;->$r8$lambda$Bh-fpp7cii-_3XqPu58I1QSXQmg(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
