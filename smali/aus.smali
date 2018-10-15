.class public final Laus;
.super Lauz;
.source "CommonMediaHandler.java"


# instance fields
.field a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

.field b:Lod$a;

.field c:Ljava/lang/Runnable;

.field d:Lod$a;

.field private f:I

.field private g:Lawj;

.field private h:Lava;

.field private i:Lauz$a;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private m:Lju;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lauz;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Laus;->f:I

    .line 69
    new-instance v0, Lava;

    invoke-direct {v0}, Lava;-><init>()V

    iput-object v0, p0, Laus;->h:Lava;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laus;->j:Ljava/util/ArrayList;

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laus;->k:J

    .line 73
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    iput-object v0, p0, Laus;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    .line 411
    new-instance v0, Laus$3;

    invoke-direct {v0, p0}, Laus$3;-><init>(Laus;)V

    iput-object v0, p0, Laus;->m:Lju;

    .line 631
    new-instance v0, Laus$4;

    invoke-direct {v0, p0}, Laus$4;-><init>(Laus;)V

    iput-object v0, p0, Laus;->b:Lod$a;

    .line 646
    new-instance v0, Laus$5;

    invoke-direct {v0, p0}, Laus$5;-><init>(Laus;)V

    iput-object v0, p0, Laus;->c:Ljava/lang/Runnable;

    .line 654
    new-instance v0, Laus$6;

    invoke-direct {v0, p0}, Laus$6;-><init>(Laus;)V

    iput-object v0, p0, Laus;->d:Lod$a;

    .line 80
    new-instance v0, Lawj;

    invoke-direct {v0, p1}, Lawj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laus;->g:Lawj;

    .line 81
    return-void
.end method

.method static synthetic a(Laus;I)I
    .locals 0
    .param p0, "x0"    # Laus;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Laus;->f:I

    return p1
.end method

.method static synthetic a(Laus;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laus;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Laus;->b(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Laus;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laus;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Laus;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Laus;)V
    .locals 0
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    invoke-direct {p0}, Laus;->g()V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "speechList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v1, 0x0

    .line 218
    invoke-static {p2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "startTts() | speechList=null -> start ring tone"

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return v1

    .line 222
    :cond_0
    iget-object v2, p0, Laus;->g:Lawj;

    invoke-virtual {v2}, Lawj;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iget-object v1, p0, Laus;->g:Lawj;

    invoke-virtual {v1}, Lawj;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    invoke-direct {p0, p1, p2}, Laus;->b(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "speechContent":Ljava/lang/String;
    const-string/jumbo v1, "CommonScheduleMediaHandler"

    const-string/jumbo v2, "startTts() | start to tts..."

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v1}, Lawd;->a(Landroid/content/Context;)V

    .line 227
    iget-object v1, p0, Laus;->g:Lawj;

    iget-object v2, p0, Laus;->m:Lju;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v0, v2, v4, v5}, Lawj;->a(Ljava/lang/String;Lju;J)V

    .line 233
    .end local v0    # "speechContent":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 230
    :cond_1
    const-string/jumbo v1, "CommonScheduleMediaHandler"

    const-string/jumbo v2, "startTts() | not call idle state or is recording -> add to speechList cach"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Laus;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 236
    :cond_2
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "startTts() | speech service is not init ok! -> add to speechList cach & start playing ring tone..."

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Laus;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 7
    .param p1, "mSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v3

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    .line 154
    .local v2, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v5, v2, :cond_3

    .line 155
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v5

    invoke-virtual {v5}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 157
    .local v0, "morningModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v0, :cond_2

    const-string/jumbo v5, "1"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0, v3}, Laus;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 161
    .end local v0    # "morningModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v5

    invoke-virtual {v5}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    .line 163
    .local v1, "nightModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v1, :cond_3

    const-string/jumbo v5, "1"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v1, v4}, Laus;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v1    # "nightModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_3
    move v3, v4

    .line 168
    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Z)Z
    .locals 4
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "isNight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    const/4 v0, 0x0

    .line 176
    .local v0, "path":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v1, 0x1

    goto :goto_0

    .line 179
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "speechList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v1, 0x0

    .line 193
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "startTts() | speechList=null -> start ring tone"

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return v1

    .line 197
    :cond_0
    iget-object v2, p0, Laus;->g:Lawj;

    invoke-virtual {v2}, Lawj;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v1, p0, Laus;->g:Lawj;

    invoke-virtual {v1}, Lawj;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbbi;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "speechContent":Ljava/lang/String;
    const-string/jumbo v1, "CommonScheduleMediaHandler"

    const-string/jumbo v2, "startTts() | start to tts..."

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v1}, Lawd;->a(Landroid/content/Context;)V

    .line 202
    iget-object v1, p0, Laus;->g:Lawj;

    iget-object v2, p0, Laus;->m:Lju;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v0, v2, v4, v5}, Lawj;->a(Ljava/lang/String;Lju;J)V

    .line 208
    .end local v0    # "speechContent":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const-string/jumbo v1, "CommonScheduleMediaHandler"

    const-string/jumbo v2, "startTts() | not call idle state or is recording -> add to speechList cach"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Laus;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 211
    :cond_2
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "startTts() | speech service is not init ok! -> add to speechList cach & start playing ring tone..."

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Laus;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic b(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 18
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, "speechList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-nez p2, :cond_0

    .line 486
    const-string/jumbo v14, ""

    .line 627
    :goto_0
    return-object v14

    .line 489
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 490
    .local v10, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v10, :cond_1

    .line 491
    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "content":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 493
    const-string/jumbo v14, ""

    goto :goto_0

    .line 497
    .end local v2    # "content":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Laus;->e:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 499
    .local v9, "res":Landroid/content/res/Resources;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v13, "ttsBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v14

    const-string/jumbo v15, "com.iflytek.cmccIFLY_NOTIFY_REMIND_PATTERN"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lil;->b(Ljava/lang/String;I)I

    move-result v11

    .line 501
    .local v11, "schedulePattern":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v14

    const-string/jumbo v15, "com.iflytek.cmccIFLY_NOTIFY_REMIND_TIMES"

    invoke-virtual {v14, v15}, Lil;->d(Ljava/lang/String;)I

    move-result v12

    .line 502
    .local v12, "scheduleTimes":I
    const-string/jumbo v14, "CommonScheduleMediaHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getReadContent() start | patttern="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",times="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v14, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 509
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 510
    .local v6, "length":I
    packed-switch v11, :pswitch_data_0

    .line 626
    .end local v6    # "length":I
    :goto_1
    const-string/jumbo v14, "CommonScheduleMediaHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getReadContent() end | tts="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 512
    .restart local v6    # "length":I
    :pswitch_0
    const v14, 0x7f0c012d

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    const v14, 0x7f0c012e

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 519
    :pswitch_1
    const/4 v14, 0x1

    if-ne v6, v14, :cond_2

    .line 520
    const v14, 0x7f0c012f

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 524
    :cond_2
    const v14, 0x7f0c012d

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    const v14, 0x7f0c012e

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 537
    .end local v6    # "length":I
    :cond_3
    packed-switch v11, :pswitch_data_1

    .line 599
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 600
    .local v5, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 601
    .restart local v2    # "content":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 602
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string/jumbo v15, "[p300]"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 539
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :pswitch_2
    const v14, 0x7f0c0131

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_5
    packed-switch v12, :pswitch_data_2

    goto/16 :goto_1

    .line 611
    :pswitch_3
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v13, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 545
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 546
    .restart local v5    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRawtext()Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, "rawtext":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 549
    .restart local v2    # "content":Ljava/lang/String;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    const-string/jumbo v15, "null"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 550
    const v15, 0x7f0c0132

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    move-object/from16 v0, p0

    iget-object v15, v0, Laus;->e:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v15 .. v17}, Lbaa;->g(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-static {v2}, Lawh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, "contentNoSymbol":Ljava/lang/String;
    invoke-static {v2}, Lawh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "contentNoEndSymbol":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_7

    if-eqz v3, :cond_7

    .line 569
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_7

    .line 571
    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_6

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 573
    const v15, 0x7f0c0135

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_4
    const-string/jumbo v15, "[p300]"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 578
    :cond_6
    const v15, 0x7f0c0133

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const v15, 0x7f0c0134

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 586
    :cond_7
    const v15, 0x7f0c0131

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string/jumbo v15, "[p300]"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 591
    .end local v3    # "contentNoEndSymbol":Ljava/lang/String;
    .end local v4    # "contentNoSymbol":Ljava/lang/String;
    :cond_8
    const v15, 0x7f0c0131

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string/jumbo v15, "[p300]"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 615
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v7    # "rawtext":Ljava/lang/String;
    :pswitch_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 616
    .local v8, "repeatContent":Ljava/lang/String;
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 537
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 609
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 2
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    const/4 v1, 0x0

    .line 352
    :goto_0
    return-object v1

    .line 346
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    .line 347
    .local v0, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v1, v0, :cond_2

    .line 350
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 352
    :cond_2
    const-string/jumbo v1, "android_asset://ringtone/notice.mp3"

    goto :goto_0
.end method

.method static synthetic c(Laus;)Lava;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->h:Lava;

    return-object v0
.end method

.method static synthetic d(Laus;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 243
    const-string/jumbo v2, "CommonScheduleMediaHandler"

    const-string/jumbo v3, "doRest"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Laus;->i:Lauz$a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Laus;->i:Lauz$a;

    invoke-interface {v2}, Lauz$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {p0}, Laus;->a()V

    .line 246
    iget-object v2, p0, Laus;->i:Lauz$a;

    invoke-interface {v2}, Lauz$a;->b()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v2, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v2}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v2

    invoke-virtual {v2}, Ltd;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    iget-object v2, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    .line 256
    .local v1, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, v1, :cond_2

    .line 257
    iget-object v2, p0, Laus;->e:Landroid/content/Context;

    const-string/jumbo v3, "ringtone/notice.mp3"

    invoke-static {v2, v3}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, v1, :cond_3

    .line 260
    invoke-direct {p0}, Laus;->f()V

    goto :goto_0

    .line 262
    :cond_3
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, v1, :cond_4

    .line 263
    iget-object v2, p0, Laus;->e:Landroid/content/Context;

    const-string/jumbo v3, "ringtone/notice.mp3"

    invoke-static {v2, v3}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_4
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, v1, :cond_5

    .line 265
    invoke-direct {p0}, Laus;->e()V

    goto :goto_0

    .line 266
    :cond_5
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, v1, :cond_6

    .line 267
    iget v2, p0, Laus;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laus;->f:I

    .line 268
    iget-object v2, p0, Laus;->e:Landroid/content/Context;

    const/4 v3, 0x1

    iget-object v4, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v4}, Laus;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Laus;->d:Lod$a;

    invoke-static {v2, v3, v4, v5}, Lawd;->a(Landroid/content/Context;ZLjava/lang/String;Lod$a;)V

    goto :goto_0

    .line 270
    :cond_6
    iget-object v2, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v2}, Laus;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "ringPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v2}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v2

    .line 272
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Laxa;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 273
    iget-object v2, p0, Laus;->e:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v4}, Laus;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Laus;->b:Lod$a;

    invoke-static {v2, v3, v4, v5}, Lawd;->a(Landroid/content/Context;ZLjava/lang/String;Lod$a;)V

    .line 274
    iget-object v2, p0, Laus;->h:Lava;

    invoke-virtual {v2}, Lava;->a()V

    goto/16 :goto_0

    .line 276
    :cond_7
    invoke-direct {p0}, Laus;->f()V

    goto/16 :goto_0
.end method

.method static synthetic e(Laus;)Lju;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->m:Lju;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 286
    iget-object v5, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v5

    invoke-virtual {v5}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 288
    .local v0, "morningModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "1"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "playPath":Ljava/lang/String;
    const-string/jumbo v4, "goodmorning"

    .line 292
    .local v4, "ringType":Ljava/lang/String;
    iget-object v5, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v5}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lbbl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v5, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100094"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    .line 294
    iget-object v5, p0, Laus;->e:Landroid/content/Context;

    iget-object v6, p0, Laus;->b:Lod$a;

    invoke-static {v5, v7, v3, v6}, Lawd;->a(Landroid/content/Context;ZLjava/lang/String;Lod$a;)V

    .line 339
    .end local v0    # "morningModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "playPath":Ljava/lang/String;
    .end local v4    # "ringType":Ljava/lang/String;
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v5, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v5

    invoke-virtual {v5}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    .line 299
    .local v1, "nightModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "1"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v2

    .line 301
    .restart local v2    # "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .restart local v3    # "playPath":Ljava/lang/String;
    const-string/jumbo v4, "goodnight"

    .line 303
    .restart local v4    # "ringType":Ljava/lang/String;
    iget-object v5, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v5}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v5

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lbbl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100094"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Laus;->e:Landroid/content/Context;

    iget-object v6, p0, Laus;->b:Lod$a;

    invoke-static {v5, v7, v3, v6}, Lawd;->a(Landroid/content/Context;ZLjava/lang/String;Lod$a;)V

    goto :goto_0

    .line 309
    .end local v1    # "nightModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "playPath":Ljava/lang/String;
    .end local v4    # "ringType":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Laus;->e:Landroid/content/Context;

    const-string/jumbo v6, "ringtone/notice.mp3"

    invoke-static {v5, v6}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Laus;)Lawj;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->g:Lawj;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 360
    :try_start_0
    iget-object v2, p0, Laus;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "ringtone/notice.mp3"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 361
    .local v1, "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    iget-object v2, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v2}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v2

    invoke-virtual {v2, v1}, Lod;->b(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v1    # "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Laus;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Laus$2;

    invoke-direct {v3, p0}, Laus$2;-><init>(Laus;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Laus;->a()V

    .line 379
    iget-object v0, p0, Laus;->i:Lauz$a;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Laus;->i:Lauz$a;

    invoke-interface {v0}, Lauz$a;->b()V

    .line 382
    :cond_0
    return-void
.end method

.method static synthetic g(Laus;)V
    .locals 0
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    invoke-direct {p0}, Laus;->d()V

    return-void
.end method

.method static synthetic h(Laus;)Lauz$a;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->i:Lauz$a;

    return-object v0
.end method

.method static synthetic i(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Laus;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method static synthetic l(Laus;)I
    .locals 2
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget v0, p0, Laus;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laus;->f:I

    return v0
.end method

.method static synthetic m(Laus;)I
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget v0, p0, Laus;->f:I

    return v0
.end method

.method static synthetic n(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Laus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laus;

    .prologue
    .line 54
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Laus;->g:Lawj;

    invoke-virtual {v0}, Lawj;->a()V

    .line 387
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Laus;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Laus;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 388
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lod;->a(Lod$a;)V

    .line 389
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v0}, Lawd;->a(Landroid/content/Context;)V

    .line 390
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v0}, Lawk;->a(Landroid/content/Context;)V

    .line 391
    iget-object v0, p0, Laus;->h:Lava;

    invoke-virtual {v0}, Lava;->a()V

    .line 392
    iget-object v0, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v0}, Lawc;->a(Landroid/content/Context;)V

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Laus;->f:I

    .line 394
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;Lauz$a;)V
    .locals 7
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .param p3, "listener"    # Lauz$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;",
            "Lauz$a;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "schedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    iput-object p3, p0, Laus;->i:Lauz$a;

    .line 86
    iget-object v1, p0, Laus;->h:Lava;

    const-wide/32 v2, 0xea60

    new-instance v4, Laus$1;

    invoke-direct {v4, p0}, Laus$1;-><init>(Laus;)V

    invoke-virtual {v1, v2, v3, v4}, Lava;->a(JLava$a;)V

    .line 94
    iget-object v1, p0, Laus;->e:Landroid/content/Context;

    invoke-static {v1}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v1

    invoke-virtual {v1}, Ltd;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    const-string/jumbo v1, "CommonScheduleMediaHandler"

    const-string/jumbo v2, "startMedia()"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 99
    :cond_0
    const-string/jumbo v1, "CommonScheduleMediaHandler"

    const-string/jumbo v2, "startSound() | speechList=null -> start ring tone"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lawd;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-direct {p0}, Laus;->d()V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 106
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iput-object v0, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 109
    invoke-static {}, Laux;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 111
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v2, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 112
    invoke-direct {p0, p1, p2}, Laus;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    invoke-direct {p0}, Laus;->d()V

    .line 145
    :cond_3
    :goto_1
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Laus;->k:J

    goto :goto_0

    .line 115
    :cond_4
    iget-object v1, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v2, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 116
    invoke-direct {p0, v1}, Laus;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    invoke-direct {p0, p2}, Laus;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    invoke-direct {p0}, Laus;->d()V

    goto :goto_1

    .line 122
    :cond_5
    invoke-static {}, Lawd;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    iget-object v1, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_6

    iget-object v1, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getShakeFlag()I

    move-result v1

    if-lez v1, :cond_6

    .line 127
    :cond_6
    iget-object v1, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v2, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-ne v1, v2, :cond_7

    const-string/jumbo v1, "IS_SLIENT"

    iget-object v2, p0, Laus;->l:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_SILIENT:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 128
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 129
    sput-boolean v6, Lavb;->a:Z

    .line 131
    :cond_7
    invoke-direct {p0}, Laus;->d()V

    goto :goto_1

    .line 135
    :cond_8
    sput-boolean v6, Lavb;->a:Z

    .line 137
    const-string/jumbo v1, "CommonScheduleMediaHandler"

    const-string/jumbo v2, "startSound() | TTS Setting is close -> start playing ring tone..."

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Laus;->d()V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Laus;->g:Lawj;

    invoke-virtual {v0}, Lawj;->b()V

    .line 399
    iget-object v0, p0, Laus;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Laus;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 402
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Laus;->g:Lawj;

    invoke-virtual {v1}, Lawj;->e()Z

    move-result v0

    .line 407
    .local v0, "ret":Z
    const-string/jumbo v1, "CommonScheduleMediaHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBusy(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v0
.end method
