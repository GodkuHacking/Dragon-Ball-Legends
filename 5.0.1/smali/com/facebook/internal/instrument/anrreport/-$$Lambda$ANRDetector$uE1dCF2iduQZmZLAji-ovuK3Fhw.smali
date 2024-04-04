.class public final synthetic Lcom/facebook/internal/instrument/anrreport/-$$Lambda$ANRDetector$uE1dCF2iduQZmZLAji-ovuK3Fhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/internal/instrument/anrreport/-$$Lambda$ANRDetector$uE1dCF2iduQZmZLAji-ovuK3Fhw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/instrument/anrreport/-$$Lambda$ANRDetector$uE1dCF2iduQZmZLAji-ovuK3Fhw;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/anrreport/-$$Lambda$ANRDetector$uE1dCF2iduQZmZLAji-ovuK3Fhw;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/anrreport/-$$Lambda$ANRDetector$uE1dCF2iduQZmZLAji-ovuK3Fhw;->INSTANCE:Lcom/facebook/internal/instrument/anrreport/-$$Lambda$ANRDetector$uE1dCF2iduQZmZLAji-ovuK3Fhw;

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

    invoke-static {}, Lcom/facebook/internal/instrument/anrreport/ANRDetector;->lambda$uE1dCF2iduQZmZLAji-ovuK3Fhw()V

    return-void
.end method
