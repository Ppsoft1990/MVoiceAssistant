.class public Lof;
.super Ljava/lang/Object;
.source "IflyNotificationIdSet.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "schedule.TRIGGER_SCHEDULE"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->a:I

    .line 18
    const-string/jumbo v0, "carmode.CAR_MODE_STATE_CHANGE"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->b:I

    .line 22
    const-string/jumbo v0, "carmode.CAR_MODE_MISS_CALL"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->c:I

    .line 26
    const-string/jumbo v0, "carmode.CAR_MODE_CANCEL_RING"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->d:I

    .line 30
    const-string/jumbo v0, "push.channel.CHANNEL_PUSH"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->e:I

    .line 34
    const-string/jumbo v0, "push.story.STORY_PUSH"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->f:I

    .line 38
    const-string/jumbo v0, "push.newnotice.MEW_NOTICE_PUSH"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->g:I

    .line 42
    const-string/jumbo v0, "push.schedule.SCHEDULE_PUSH"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->h:I

    .line 47
    const-string/jumbo v0, "news.NEWS_MAIN_PLAY"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->i:I

    .line 51
    const-string/jumbo v0, "news.NEWS_SUB_PLAY"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->j:I

    .line 55
    const-string/jumbo v0, "news.NEWS_DETAIL_PLAY"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->k:I

    .line 59
    const-string/jumbo v0, "novel.NOVEL_PLAY"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->l:I

    .line 63
    const-string/jumbo v0, "music.MUSIC_MAIN_PLAY"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->m:I

    .line 67
    const-string/jumbo v0, "music.MUSIC_SUB_PLAY"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->n:I

    .line 71
    const-string/jumbo v0, "music.MUSIC_SUB_MORE_PLAY"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->o:I

    .line 74
    const-string/jumbo v0, "mms.UPDATE_NOTIFICATION_ID"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->p:I

    .line 75
    const-string/jumbo v0, "mms.MESSAGE_FAILED_NOTIFICATION_ID"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->q:I

    .line 76
    const-string/jumbo v0, "mms.SHOW_NOTIFICATION_ID"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->r:I

    .line 77
    const-string/jumbo v0, "mms.MAIL_NOTIFICATION_ID"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->s:I

    .line 82
    const-string/jumbo v0, "music.MUSIC_UNFINISH_DOWNLOAD"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->t:I

    .line 86
    const-string/jumbo v0, "mutiprocess.FOREGROUND_NOTIFICATION"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->u:I

    .line 90
    const-string/jumbo v0, "app.APP_VERSION_UPDATE"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lof;->v:I

    return-void
.end method

.method public static a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "schedule.dated."

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 2
    .param p0, "scheduleID"    # I

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "schedule.delay."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
