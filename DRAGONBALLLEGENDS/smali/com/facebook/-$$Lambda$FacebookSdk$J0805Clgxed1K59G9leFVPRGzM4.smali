.class public final synthetic Lcom/facebook/-$$Lambda$FacebookSdk$J0805Clgxed1K59G9leFVPRGzM4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/-$$Lambda$FacebookSdk$J0805Clgxed1K59G9leFVPRGzM4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/-$$Lambda$FacebookSdk$J0805Clgxed1K59G9leFVPRGzM4;

    invoke-direct {v0}, Lcom/facebook/-$$Lambda$FacebookSdk$J0805Clgxed1K59G9leFVPRGzM4;-><init>()V

    sput-object v0, Lcom/facebook/-$$Lambda$FacebookSdk$J0805Clgxed1K59G9leFVPRGzM4;->INSTANCE:Lcom/facebook/-$$Lambda$FacebookSdk$J0805Clgxed1K59G9leFVPRGzM4;

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

    invoke-static {}, Lcom/facebook/FacebookSdk;->lambda$J0805Clgxed1K59G9leFVPRGzM4()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
