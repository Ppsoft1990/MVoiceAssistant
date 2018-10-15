.class public final Lil;
.super Ljava/lang/Object;
.source "IflySetting.java"

# interfaces
.implements Lik;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field private static l:Lil;


# instance fields
.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lik;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/traffic_stat_log_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->a:Ljava/lang/String;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/CONTACT_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->b:Ljava/lang/String;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/SPLITE_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->c:Ljava/lang/String;

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/contact_name_map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->d:Ljava/lang/String;

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/contact_number_map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->e:Ljava/lang/String;

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/num_type_map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->f:Ljava/lang/String;

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/num_type_mark_map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->g:Ljava/lang/String;

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/num_type_upload_map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->h:Ljava/lang/String;

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/broadlink_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lil;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lil;->j:Ljava/util/HashMap;

    .line 1392
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SCHEDULE_FIRST_INTO_CHANNEL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_HARDWARE_ACCELARATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_FIRST_USE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SMS_PRIVACY_RECOGNITION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IMSI_CHANGED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SMS_VIBRATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_VIBRATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_LATER_SWITCH"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_RECOMMED_OPEN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_HOME_PAGE_HOT_OPEN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REMIND_ALARM_NEWS_SYMBOL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_FIRST_ERROR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_AWAKE_NEED_REMIND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CALL_NEED_REMIND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SMS_NEED_REMIND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_SMS_NEED_REMIND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_MEDIAMSG_NEED_REMIND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_REMIND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_FUNCTION_LIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NEXT_REQUEST_NOTICE_TIME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_REQUEST_NOTICE_SWITCH"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IME_SET"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IS_BLUETOOTH_HEADSET_TESTED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IS_BLUETOOTH_HEADSET_SPEAK_USABLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IS_BLUETOOTH_HEADSET_RECOGNITION_USABLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_SMSAUTOREPLY_SWITCH"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_VEHICLE_REMIND_OPEN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_BACK_WAKE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_FAIL_TYPE"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_WEATHER_UPDATE_TIME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CMCC_MAIL_REMIND_SWITCH"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CMCC_MAIL_READ_SWITCH"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CMCC_MAIL_VIBRATE_SWITCH"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_CALL_NEED_REMIND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_WEITHER_GUIDE_FINISHED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_COLORRING_SWITCH"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_PHONE_DATABASE_UPDATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_PHONE_NUM_MARK"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_CALL_NOTIFY_SECOND"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_PHONE_COLLECTER_CALL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_PHONE_COLLECTER_SMS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_DATABASE_UPDATE_TIME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmcc.DATAMSG_FUNCTION_AVAIABLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IS_TELEPHONE_BILL_SMS_COLLECTED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IS_DATE_FLOW_SMS_COLLECTED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object v0, p0, Lil;->j:Ljava/util/HashMap;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SCHEDULE_PERMiSSION_CLOSED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const-string/jumbo v0, "com.iflytek.cmccFLYSETTING"

    invoke-static {p1, v0}, Lim;->a(Landroid/content/Context;Ljava/lang/String;)Lik;

    move-result-object v0

    iput-object v0, p0, Lil;->k:Lik;

    .line 1449
    return-void
.end method

.method public static a()Lil;
    .locals 1

    .prologue
    .line 1456
    sget-object v0, Lil;->l:Lil;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1452
    const-class v1, Lil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lil;->l:Lil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    monitor-exit v1

    return-void

    .line 1452
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1574
    move v0, p2

    .line 1575
    .local v0, "value":I
    if-eqz p1, :cond_0

    iget-object v1, p0, Lil;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1576
    iget-object v1, p0, Lil;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1578
    :cond_0
    return v0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    const/4 v1, 0x0

    .line 1570
    :goto_0
    return v1

    .line 1565
    :cond_0
    const-string/jumbo v0, ""

    .line 1566
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lil;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1567
    iget-object v1, p0, Lil;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1570
    :cond_1
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 1476
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;F)V

    .line 1477
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1471
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;I)V

    .line 1472
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1481
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2, p3}, Lik;->a(Ljava/lang/String;J)V

    .line 1482
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1547
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1548
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1486
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1466
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->a(Ljava/lang/String;Z)V

    .line 1467
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1461
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 1522
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1509
    invoke-virtual {p0, p1}, Lil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->b(Ljava/lang/String;I)I

    move-result v0

    .line 1512
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lil;->c(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 1532
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2, p3}, Lik;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1542
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1583
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->b(Ljava/lang/String;)V

    .line 1584
    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1499
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1, p2}, Lik;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1491
    invoke-virtual {p0, p1}, Lil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->c(Ljava/lang/String;)Z

    move-result v0

    .line 1494
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lil;->j(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1504
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1517
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->e(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1527
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1537
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1552
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1557
    iget-object v0, p0, Lil;->k:Lik;

    invoke-interface {v0, p1}, Lik;->i(Ljava/lang/String;)V

    .line 1558
    return-void
.end method
