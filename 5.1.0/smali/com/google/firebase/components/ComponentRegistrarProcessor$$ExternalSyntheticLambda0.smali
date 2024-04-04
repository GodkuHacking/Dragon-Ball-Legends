.class public final synthetic Lcom/google/firebase/components/ComponentRegistrarProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrarProcessor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/components/ComponentRegistrarProcessor$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/ComponentRegistrarProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/components/ComponentRegistrarProcessor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/components/ComponentRegistrarProcessor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/firebase/components/ComponentRegistrarProcessor$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processRegistrar(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 0

    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
