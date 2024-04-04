.class Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;
.super Ljava/lang/Object;
.source "CodeHashGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/codestage/actk/androidnative/CodeHashGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashCalculationResult"
.end annotation


# instance fields
.field buildPath:Ljava/lang/String;

.field errorText:Ljava/lang/String;

.field hashes:[Ljava/lang/String;

.field paths:[Ljava/lang/String;

.field summaryHash:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/codestage/actk/androidnative/CodeHashGenerator$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;-><init>()V

    return-void
.end method
