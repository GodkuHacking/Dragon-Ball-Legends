.class public final synthetic Lcom/facebook/appevents/-$$Lambda$AppEventQueue$62J7sj8JMyiA3W4h7e07NMp8t6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/appevents/-$$Lambda$AppEventQueue$62J7sj8JMyiA3W4h7e07NMp8t6E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$62J7sj8JMyiA3W4h7e07NMp8t6E;

    invoke-direct {v0}, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$62J7sj8JMyiA3W4h7e07NMp8t6E;-><init>()V

    sput-object v0, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$62J7sj8JMyiA3W4h7e07NMp8t6E;->INSTANCE:Lcom/facebook/appevents/-$$Lambda$AppEventQueue$62J7sj8JMyiA3W4h7e07NMp8t6E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->lambda$62J7sj8JMyiA3W4h7e07NMp8t6E()V

    return-void
.end method
