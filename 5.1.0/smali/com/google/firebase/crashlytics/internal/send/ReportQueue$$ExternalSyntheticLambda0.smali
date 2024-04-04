.class public final synthetic Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/datatransport/TransportScheduleCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/send/ReportQueue;Lcom/google/android/gms/tasks/TaskCompletionSource;ZLcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-boolean p3, p0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;->f$3:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;

    return-void
.end method


# virtual methods
.method public final onSchedule(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/send/ReportQueue$$ExternalSyntheticLambda0;->f$3:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/send/ReportQueue;->lambda$sendReport$1$com-google-firebase-crashlytics-internal-send-ReportQueue(Lcom/google/android/gms/tasks/TaskCompletionSource;ZLcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;Ljava/lang/Exception;)V

    return-void
.end method
