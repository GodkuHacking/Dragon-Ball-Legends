.class public final synthetic Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iget-object v3, p0, Lcom/facebook/AccessTokenManager$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/AccessTokenManager;->$r8$lambda$giJvo3B_qCSrRqaVwMKogulZatU(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/GraphResponse;)V

    return-void
.end method
