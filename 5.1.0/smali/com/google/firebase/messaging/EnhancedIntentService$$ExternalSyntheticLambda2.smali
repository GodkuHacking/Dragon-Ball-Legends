.class public final synthetic Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/firebase/messaging/EnhancedIntentService$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
