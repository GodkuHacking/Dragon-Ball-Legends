.class public final synthetic Lcom/google/firebase/concurrent/ExecutorsRegistrar$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/concurrent/ExecutorsRegistrar$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar$$ExternalSyntheticLambda7;->INSTANCE:Lcom/google/firebase/concurrent/ExecutorsRegistrar$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->lambda$static$3()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
