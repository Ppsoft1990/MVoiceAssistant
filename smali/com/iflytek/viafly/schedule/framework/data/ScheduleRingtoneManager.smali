.class public Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;
.super Ljava/lang/Object;
.source "ScheduleRingtoneManager.java"


# static fields
.field private static final BASE_RINGTONE_FILE_PATH:Ljava/lang/String;

.field private static final LAST_MODIFIED_SCHEDULE_RING_ID:I = 0x0

.field private static final LAST_MODIFIED_SCHEDULE_RING_PATH:Ljava/lang/String;

.field private static final SCHEDULE_RINGTONE_FILE_PATH:Ljava/lang/String;

.field private static final SCHEDULE_RINGTONE_MAX_ID:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ScheduleRingtoneManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/viaflyScheduleRingtoneEntity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_FILE_PATH:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->BASE_RINGTONE_FILE_PATH:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/schedule_ringtone_max_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_MAX_ID:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/schedule_ringtone_last_modified_ring.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->LAST_MODIFIED_SCHEDULE_RING_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItem(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;Landroid/content/Context;)I
    .locals 11
    .param p0, "personalizedRingtoneEntity"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    .line 76
    if-nez p0, :cond_0

    move v3, v7

    .line 109
    :goto_0
    return v3

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "audioOrginPath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_MAX_ID:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lil;->b(Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, "index":I
    if-eqz v0, :cond_4

    .line 83
    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "strs":[Ljava/lang/String;
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v6, v8

    .line 85
    .local v5, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->BASE_RINGTONE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "audioPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 87
    .local v4, "isCopySuccess":Z
    const-string/jumbo v8, "Asset://"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 88
    const-string/jumbo v8, "Asset://"

    const-string/jumbo v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8, v1}, Lawp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 92
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 93
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->setAudioPath(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_MAX_ID:Ljava/lang/String;

    invoke-virtual {v8, v9, v3}, Lil;->a(Ljava/lang/String;I)V

    .line 102
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p0}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->updateLatestPersonlizedRingtone(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v0    # "audioOrginPath":Ljava/lang/String;
    .end local v1    # "audioPath":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "isCopySuccess":Z
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ScheduleRingtoneManager"

    const-string/jumbo v9, "addItem error"

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 109
    goto/16 :goto_0

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "audioOrginPath":Ljava/lang/String;
    .restart local v1    # "audioPath":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v4    # "isCopySuccess":Z
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "strs":[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    invoke-static {v0, v1}, Lawp;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    :cond_3
    move v3, v7

    .line 95
    goto/16 :goto_0

    .end local v1    # "audioPath":Ljava/lang/String;
    .end local v4    # "isCopySuccess":Z
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "strs":[Ljava/lang/String;
    :cond_4
    move v3, v7

    .line 98
    goto/16 :goto_0
.end method

.method public static copyLastPersonalizedRingtone(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v0

    .line 115
    .local v0, "personalizedRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    invoke-static {v0, p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->addItem(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method public static delete(Ljava/lang/Integer;)V
    .locals 7
    .param p0, "id"    # Ljava/lang/Integer;

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_ALARM_CLOCK_LAST_MODIFY_RING_ID"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lil;->b(Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, "index":I
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 166
    .end local v3    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v3    # "index":I
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 156
    .local v1, "cache":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v1, :cond_0

    .line 157
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lil;->i(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "audioOrginPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v0    # "audioOrginPath":Ljava/lang/String;
    .end local v1    # "cache":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .end local v3    # "index":I
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ScheduleRingtoneManager"

    const-string/jumbo v5, "getItem() error!"

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .locals 5
    .param p0, "id"    # Ljava/lang/Integer;

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ScheduleRingtoneManager"

    const-string/jumbo v3, "getItem() error!"

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager$1;-><init>()V

    .line 32
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->registerListener(Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;)V

    .line 56
    return-void
.end method

.method public static updateLatestPersonlizedRingtone(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)V
    .locals 6
    .param p0, "personalizedRingtoneEntity"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "audioOrginPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 125
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->LAST_MODIFIED_SCHEDULE_RING_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->LAST_MODIFIED_SCHEDULE_RING_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 128
    :cond_2
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->LAST_MODIFIED_SCHEDULE_RING_PATH:Ljava/lang/String;

    invoke-static {v0, v3}, Lawp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 129
    .local v2, "isCopySuccess":Z
    if-eqz v2, :cond_0

    .line 132
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->LAST_MODIFIED_SCHEDULE_RING_PATH:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->setAudioPath(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->SCHEDULE_RINGTONE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_ALARM_CLOCK_LAST_MODIFY_RING_ID"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v0    # "audioOrginPath":Ljava/lang/String;
    .end local v2    # "isCopySuccess":Z
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ScheduleRingtoneManager"

    const-string/jumbo v4, "updateLatestPersonlizedRingtone error"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
