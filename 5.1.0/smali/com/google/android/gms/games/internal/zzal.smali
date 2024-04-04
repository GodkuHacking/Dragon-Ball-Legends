.class public abstract Lcom/google/android/gms/games/internal/zzal;
.super Lcom/google/android/gms/internal/games_v2/zzb;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzam;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 p4, 0x1771

    if-eq p1, p4, :cond_7

    const/16 p4, 0x1772

    if-eq p1, p4, :cond_6

    const/16 p4, 0x2eeb

    if-eq p1, p4, :cond_5

    const/16 p4, 0x2eec

    if-eq p1, p4, :cond_4

    const/16 p4, 0x32c9

    if-eq p1, p4, :cond_3

    const/16 p4, 0x32ca

    if-eq p1, p4, :cond_2

    const/16 p4, 0x4a39

    if-eq p1, p4, :cond_1

    const/16 p4, 0x4a3a

    if-eq p1, p4, :cond_0

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const/4 p1, 0x0

    return p1

    .line 69
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 71
    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/drive/Contents;

    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/drive/Contents;

    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/drive/Contents;

    .line 74
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzal;->zzo(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_0

    .line 76
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 80
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 81
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 82
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 90
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 91
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 92
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 93
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 94
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 95
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 96
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 97
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzn(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 99
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 100
    sget-object p4, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/drive/Contents;

    .line 101
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 102
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzal;->zzq(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_0

    .line 109
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 110
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 111
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 113
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 114
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 115
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 116
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 117
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 118
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 119
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 120
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 121
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 124
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 125
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 126
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 127
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 128
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 129
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 130
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 132
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 133
    :pswitch_13
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 134
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 135
    :pswitch_14
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 136
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 137
    :pswitch_15
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 138
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 139
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 140
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 141
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 143
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 144
    :pswitch_18
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 145
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzh(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 1
    :sswitch_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzal;->zzl(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :sswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 9
    :sswitch_3
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzg(Landroid/os/Parcel;)Z

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 11
    :sswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 13
    :sswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 15
    :sswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 17
    :sswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 19
    :sswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 21
    :sswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 24
    :sswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 26
    :sswitch_b
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 28
    :sswitch_c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 30
    :sswitch_d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 32
    :sswitch_e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 34
    :sswitch_f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 36
    :sswitch_10
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 38
    :sswitch_11
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 40
    :sswitch_12
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 42
    :sswitch_13
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 44
    :sswitch_14
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 46
    :sswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 47
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 48
    :sswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 50
    :sswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 58
    :sswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 59
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 60
    :sswitch_19
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 61
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzi(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 63
    :sswitch_1a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/common/data/DataHolder;

    .line 64
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 103
    :sswitch_1b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 104
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzr(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 106
    :sswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 108
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 122
    :sswitch_1d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 123
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 151
    :sswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 152
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 153
    :sswitch_1f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 154
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 155
    :sswitch_20
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 156
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 157
    :sswitch_21
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 158
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 159
    :sswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 161
    :sswitch_23
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 162
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 163
    :sswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 165
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzg(Landroid/os/Parcel;)Z

    .line 166
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 167
    :sswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 170
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    :sswitch_26
    sget-object p1, Lcom/google/android/gms/games/multiplayer/realtime/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 171
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/zzb;

    .line 172
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 173
    :sswitch_27
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 175
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 176
    :sswitch_28
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 178
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 179
    :sswitch_29
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 181
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 182
    :sswitch_2a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 184
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 185
    :sswitch_2b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 187
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 188
    :sswitch_2c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 190
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 191
    :sswitch_2d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 192
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 193
    :sswitch_2e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 194
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 195
    :sswitch_2f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 196
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 197
    :sswitch_30
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 198
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 199
    :sswitch_31
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 200
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 201
    :sswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 203
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 204
    :sswitch_33
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 205
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 206
    :sswitch_34
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 207
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 208
    :sswitch_35
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 209
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 210
    :sswitch_36
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzal;->zzm()V

    goto/16 :goto_0

    .line 211
    :pswitch_19
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 212
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 213
    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 214
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 215
    :pswitch_1b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 216
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto/16 :goto_0

    .line 217
    :pswitch_1c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 218
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zze(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 220
    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 221
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzj(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 223
    :pswitch_1e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 224
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzk(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 226
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    sget-object p4, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 227
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/common/data/DataHolder;

    .line 228
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 229
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzal;->zzf(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 230
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 231
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzg(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    .line 233
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 235
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 236
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzal;->zzb(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :pswitch_22
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 238
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    .line 240
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 242
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzg(Landroid/os/Parcel;)Z

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 56
    sget-object p1, Lcom/google/android/gms/games/video/VideoCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/video/VideoCapabilities;

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 67
    :cond_3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 68
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 85
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 86
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/games/internal/zzal;->zzp(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 88
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzal;->zzd(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    .line 147
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 148
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    goto :goto_0

    .line 149
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 150
    invoke-static {p2}, Lcom/google/android/gms/internal/games_v2/zzc;->zzb(Landroid/os/Parcel;)V

    .line 243
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_36
        0x1399 -> :sswitch_35
        0x139a -> :sswitch_34
        0x139b -> :sswitch_33
        0x139c -> :sswitch_32
        0x139d -> :sswitch_31
        0x139e -> :sswitch_30
        0x139f -> :sswitch_2f
        0x13a0 -> :sswitch_2e
        0x13a1 -> :sswitch_2d
        0x13a2 -> :sswitch_2c
        0x13a3 -> :sswitch_2b
        0x13a4 -> :sswitch_2a
        0x13a5 -> :sswitch_29
        0x13a6 -> :sswitch_28
        0x13a7 -> :sswitch_27
        0x13a8 -> :sswitch_26
        0x13a9 -> :sswitch_25
        0x13aa -> :sswitch_24
        0x13ab -> :sswitch_23
        0x13ac -> :sswitch_22
        0x13ad -> :sswitch_21
        0x13ae -> :sswitch_20
        0x13af -> :sswitch_1f
        0x13b0 -> :sswitch_1e
        0x2329 -> :sswitch_1d
        0x2af9 -> :sswitch_1c
        0x2ee1 -> :sswitch_1b
        0x36b1 -> :sswitch_1a
        0x3a99 -> :sswitch_19
        0x426a -> :sswitch_18
        0x4a40 -> :sswitch_17
        0x4a41 -> :sswitch_16
        0x4a42 -> :sswitch_15
        0x4e21 -> :sswitch_14
        0x4e22 -> :sswitch_13
        0x4e23 -> :sswitch_12
        0x4e24 -> :sswitch_11
        0x4e25 -> :sswitch_10
        0x4e26 -> :sswitch_f
        0x4e27 -> :sswitch_e
        0x4e28 -> :sswitch_d
        0x4e29 -> :sswitch_c
        0x4e2c -> :sswitch_b
        0x4e33 -> :sswitch_a
        0x4e34 -> :sswitch_9
        0x59d9 -> :sswitch_8
        0x59da -> :sswitch_7
        0x59db -> :sswitch_6
        0x59dc -> :sswitch_5
        0x59dd -> :sswitch_4
        0x5dc2 -> :sswitch_3
        0x61aa -> :sswitch_2
        0x61ab -> :sswitch_1
        0x61ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1f41
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2711
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2ee4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2eee
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
