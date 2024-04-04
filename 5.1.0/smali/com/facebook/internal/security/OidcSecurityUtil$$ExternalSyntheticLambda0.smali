.class public final synthetic Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/net/URL;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/concurrent/locks/ReentrantLock;

.field public final synthetic f$4:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$0:Ljava/net/URL;

    iput-object p2, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p5, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$4:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$0:Ljava/net/URL;

    iget-object v1, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v4, p0, Lcom/facebook/internal/security/OidcSecurityUtil$$ExternalSyntheticLambda0;->f$4:Ljava/util/concurrent/locks/Condition;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/security/OidcSecurityUtil;->$r8$lambda$dhxCIHn5ty9iClrxwBztPOJGQC8(Ljava/net/URL;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method
