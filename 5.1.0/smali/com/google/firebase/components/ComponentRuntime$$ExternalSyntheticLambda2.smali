.class public final synthetic Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;

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

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
