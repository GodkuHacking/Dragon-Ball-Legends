.class public final synthetic Lcom/google/firebase/FirebaseCommonRegistrar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/FirebaseCommonRegistrar$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/FirebaseCommonRegistrar$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseCommonRegistrar$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseCommonRegistrar$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/firebase/FirebaseCommonRegistrar$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->lambda$getComponents$2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
