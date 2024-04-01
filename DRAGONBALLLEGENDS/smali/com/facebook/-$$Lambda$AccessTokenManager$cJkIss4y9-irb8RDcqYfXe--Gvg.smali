.class public final synthetic Lcom/facebook/-$$Lambda$AccessTokenManager$cJkIss4y9-irb8RDcqYfXe--Gvg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/AccessTokenManager;

.field public final synthetic f$1:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$cJkIss4y9-irb8RDcqYfXe--Gvg;->f$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$cJkIss4y9-irb8RDcqYfXe--Gvg;->f$1:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$cJkIss4y9-irb8RDcqYfXe--Gvg;->f$0:Lcom/facebook/AccessTokenManager;

    iget-object v1, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$cJkIss4y9-irb8RDcqYfXe--Gvg;->f$1:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-static {v0, v1}, Lcom/facebook/AccessTokenManager;->lambda$cJkIss4y9-irb8RDcqYfXe--Gvg(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method
