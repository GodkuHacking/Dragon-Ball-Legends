.class public final synthetic Lcom/facebook/bolts/Task$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/bolts/Task$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/bolts/Task$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/facebook/bolts/Task$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/facebook/bolts/Task$$ExternalSyntheticLambda4;->INSTANCE:Lcom/facebook/bolts/Task$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/facebook/bolts/Task;->$r8$lambda$xkVN9zPwhiRI9UDd0D9DZOYsO0o(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method
