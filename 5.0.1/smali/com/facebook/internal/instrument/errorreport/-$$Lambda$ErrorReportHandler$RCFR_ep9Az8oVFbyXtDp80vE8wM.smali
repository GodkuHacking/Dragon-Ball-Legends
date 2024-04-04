.class public final synthetic Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$RCFR_ep9Az8oVFbyXtDp80vE8wM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$RCFR_ep9Az8oVFbyXtDp80vE8wM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$RCFR_ep9Az8oVFbyXtDp80vE8wM;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$RCFR_ep9Az8oVFbyXtDp80vE8wM;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$RCFR_ep9Az8oVFbyXtDp80vE8wM;->INSTANCE:Lcom/facebook/internal/instrument/errorreport/-$$Lambda$ErrorReportHandler$RCFR_ep9Az8oVFbyXtDp80vE8wM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    check-cast p2, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->lambda$RCFR_ep9Az8oVFbyXtDp80vE8wM(Lcom/facebook/internal/instrument/errorreport/ErrorReportData;Lcom/facebook/internal/instrument/errorreport/ErrorReportData;)I

    move-result p1

    return p1
.end method
