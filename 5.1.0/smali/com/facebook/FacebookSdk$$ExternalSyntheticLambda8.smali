.class public final synthetic Lcom/facebook/FacebookSdk$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/FacebookSdk$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/FacebookSdk$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/facebook/FacebookSdk$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdk$$ExternalSyntheticLambda8;->INSTANCE:Lcom/facebook/FacebookSdk$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/facebook/FacebookSdk;->$r8$lambda$l5BfhEW0E2Knw4iBH_1AfUbqf68()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
