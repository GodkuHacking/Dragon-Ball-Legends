.class public final synthetic Lcom/facebook/internal/instrument/-$$Lambda$InstrumentManager$afbQg6_R8R87G093r1zWqUFMaOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/internal/instrument/-$$Lambda$InstrumentManager$afbQg6_R8R87G093r1zWqUFMaOY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/instrument/-$$Lambda$InstrumentManager$afbQg6_R8R87G093r1zWqUFMaOY;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/-$$Lambda$InstrumentManager$afbQg6_R8R87G093r1zWqUFMaOY;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/-$$Lambda$InstrumentManager$afbQg6_R8R87G093r1zWqUFMaOY;->INSTANCE:Lcom/facebook/internal/instrument/-$$Lambda$InstrumentManager$afbQg6_R8R87G093r1zWqUFMaOY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .locals 0

    invoke-static {p1}, Lcom/facebook/internal/instrument/InstrumentManager;->lambda$afbQg6_R8R87G093r1zWqUFMaOY(Z)V

    return-void
.end method
