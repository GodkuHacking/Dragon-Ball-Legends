.class final Lcom/google/android/gms/measurement/internal/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.3.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaa;

.field private zzb:Lcom/google/android/gms/internal/measurement/zzft;

.field private zzc:Ljava/lang/Long;

.field private zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzft;)Lcom/google/android/gms/internal/measurement/zzft;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzft;->zzi()Ljava/util/List;

    move-result-object v9

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzlh;->zzu()Lcom/google/android/gms/measurement/internal/zzlj;

    const-string v2, "_eid"

    .line 4
    invoke-static {v8, v2}, Lcom/google/android/gms/measurement/internal/zzlj;->zzD(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_11

    const-string v5, "_ep"

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_e

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlh;->zzu()Lcom/google/android/gms/measurement/internal/zzlj;

    const-string v0, "_en"

    .line 17
    invoke-static {v8, v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzD(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 18
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzh()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    const-string v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Lcom/google/android/gms/internal/measurement/zzft;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v0, v13, v15

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlh;->zzh()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v13

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgw;->zzg()V

    .line 24
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzku;->zzW()V

    .line 25
    :try_start_0
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzak;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v14, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    aput-object v3, v15, v12

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    .line 27
    invoke-virtual {v0, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    const-string v15, "Main event not found"

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_2

    .line 31
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v5

    goto :goto_2

    .line 32
    :cond_3
    :try_start_2
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 33
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->zze()Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzm(Lcom/google/android/gms/internal/measurement/zzmh;[B)Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :try_start_4
    invoke-static {v0, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v14, :cond_5

    .line 31
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 57
    :try_start_5
    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 35
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzd()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v5

    const-string v15, "Failed to merge main event. appId, eventId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 37
    invoke-virtual {v5, v15, v12, v4, v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v14, :cond_4

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    .line 14
    :goto_0
    :try_start_6
    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzd()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v5

    const-string v12, "Error selecting main event"

    invoke-virtual {v5, v12, v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v14, :cond_4

    .line 31
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    if-eqz v0, :cond_c

    .line 42
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v5, :cond_6

    goto/16 :goto_6

    .line 46
    :cond_6
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzft;

    iput-object v5, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Lcom/google/android/gms/internal/measurement/zzft;

    .line 47
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlh;->zzu()Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Lcom/google/android/gms/internal/measurement/zzft;

    .line 49
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzlj;->zzD(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Ljava/lang/Long;

    :cond_7
    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    const-wide/16 v14, -0x1

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    cmp-long v0, v12, v6

    if-gtz v0, :cond_8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlh;->zzh()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgw;->zzg()V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    const-string v4, "Clearing complex main event info. appId"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :try_start_7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzak;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "delete from main_event_params where app_id=?"

    new-array v5, v11, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 55
    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 41
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzd()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 69
    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlh;->zzh()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v2

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Lcom/google/android/gms/internal/measurement/zzft;

    move-object/from16 v3, p1

    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzak;->zzJ(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzft;)Z

    .line 55
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Lcom/google/android/gms/internal/measurement/zzft;

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzft;->zzi()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 62
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzlh;->zzu()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/android/gms/measurement/internal/zzlj;->zzC(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v4

    if-nez v4, :cond_9

    .line 64
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 65
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 66
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v9, v0

    goto :goto_5

    .line 70
    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzh()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    .line 69
    invoke-virtual {v0, v2, v10}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    move-object v0, v10

    goto :goto_8

    .line 42
    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzh()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 45
    invoke-virtual {v0, v2, v10, v4}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    move-object v5, v14

    :goto_7
    if-eqz v5, :cond_d

    .line 31
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_d
    throw v0

    .line 31
    :cond_e
    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Ljava/lang/Long;

    iput-object v8, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Lcom/google/android/gms/internal/measurement/zzft;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzlh;->zzu()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "_epc"

    .line 8
    invoke-static {v8, v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zzD(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f

    move-object v2, v5

    .line 7
    :cond_f
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    cmp-long v2, v10, v6

    if-gtz v2, :cond_10

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgw;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaA()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzh()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    const-string v3, "Complex event with zero extra param count. eventName"

    .line 11
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_10
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkt;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzlh;->zzh()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v2

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzak;->zzJ(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzft;)Z

    .line 70
    :cond_11
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzg()Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft;

    return-object v0
.end method
