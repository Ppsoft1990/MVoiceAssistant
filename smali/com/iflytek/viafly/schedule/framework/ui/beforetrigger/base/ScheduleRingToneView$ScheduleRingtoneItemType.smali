.class public final enum Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;
.super Ljava/lang/Enum;
.source "ScheduleRingToneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScheduleRingtoneItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum EMPTY:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum LONG:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum Local:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum MORE:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum News:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum Personal:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum Record:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum RecordMorning:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum RecordNight:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum RecordRemind:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum SHORT:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

.field public static final enum Weather:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;


# instance fields
.field private mScheduleRingToneItem:Lavz;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 333
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "Personal"

    new-instance v2, Lavz$a;

    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v4, "\u7279\u8272\u4eba\u7269"

    invoke-direct {v2, v3, v4}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    const-string/jumbo v3, ""

    .line 334
    invoke-virtual {v2, v3}, Lavz$a;->a(Ljava/lang/String;)Lavz$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lavz$a;->a(Z)Lavz$a;

    move-result-object v2

    .line 335
    invoke-virtual {v2, v7}, Lavz$a;->b(Z)Lavz$a;

    move-result-object v2

    invoke-virtual {v2}, Lavz$a;->a()Lavz;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Personal:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 337
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "Local"

    new-instance v2, Lavz$a;

    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v4, "\u672c\u5730\u94c3\u58f0"

    invoke-direct {v2, v3, v4}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2, v6}, Lavz$a;->a(Z)Lavz$a;

    move-result-object v2

    .line 339
    invoke-virtual {v2, v7}, Lavz$a;->b(Z)Lavz$a;

    move-result-object v2

    invoke-virtual {v2}, Lavz$a;->a()Lavz;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Local:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 341
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "Weather"

    new-instance v2, Lavz$a;

    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v4, "\u5929\u6c14\u9884\u62a5"

    invoke-direct {v2, v3, v4}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    invoke-virtual {v2}, Lavz$a;->a()Lavz;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Weather:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 343
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "News"

    new-instance v2, Lavz$a;

    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v4, "\u65b0\u95fb\u64ad\u62a5"

    invoke-direct {v2, v3, v4}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    invoke-virtual {v2}, Lavz$a;->a()Lavz;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->News:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 345
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "Record"

    new-instance v2, Lavz$a;

    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v4, "\u4e2a\u6027\u8bed\u97f3"

    invoke-direct {v2, v3, v4}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2, v6}, Lavz$a;->a(Z)Lavz$a;

    move-result-object v2

    .line 347
    invoke-virtual {v2, v7}, Lavz$a;->b(Z)Lavz$a;

    move-result-object v2

    invoke-virtual {v2}, Lavz$a;->a()Lavz;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Record:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 349
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "RecordMorning"

    const/4 v2, 0x5

    new-instance v3, Lavz$a;

    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v5, "\u65e9\u5b89\u95ee\u5019"

    invoke-direct {v3, v4, v5}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    invoke-virtual {v3}, Lavz$a;->a()Lavz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->RecordMorning:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 351
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "RecordNight"

    const/4 v2, 0x6

    new-instance v3, Lavz$a;

    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v5, "\u665a\u5b89\u95ee\u5019"

    invoke-direct {v3, v4, v5}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    invoke-virtual {v3}, Lavz$a;->a()Lavz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->RecordNight:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 353
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "RecordRemind"

    const/4 v2, 0x7

    new-instance v3, Lavz$a;

    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v5, "\u60a8\u6709\u4e00\u4e2a\u65b0\u63d0\u9192"

    invoke-direct {v3, v4, v5}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    invoke-virtual {v3}, Lavz$a;->a()Lavz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->RecordRemind:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 355
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "SHORT"

    const/16 v2, 0x8

    new-instance v3, Lavz$a;

    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v5, "\u55d2\u94c3\u58f0"

    invoke-direct {v3, v4, v5}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    invoke-virtual {v3}, Lavz$a;->a()Lavz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->SHORT:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 357
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "LONG"

    const/16 v2, 0x9

    new-instance v3, Lavz$a;

    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v5, "\u64ad\u62a5\u63d0\u9192\u5185\u5bb9"

    invoke-direct {v3, v4, v5}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    invoke-virtual {v3}, Lavz$a;->a()Lavz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->LONG:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 359
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "EMPTY"

    const/16 v2, 0xa

    new-instance v3, Lavz$a;

    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v5, "\u65e0\u94c3\u58f0"

    invoke-direct {v3, v4, v5}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    invoke-virtual {v3}, Lavz$a;->a()Lavz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->EMPTY:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 361
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    const-string/jumbo v1, "MORE"

    const/16 v2, 0xb

    new-instance v3, Lavz$a;

    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->MORE:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v5, "\u66f4\u591a\u94c3\u58f0"

    invoke-direct {v3, v4, v5}, Lavz$a;-><init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V

    const-string/jumbo v4, ""

    .line 362
    invoke-virtual {v3, v4}, Lavz$a;->a(Ljava/lang/String;)Lavz$a;

    move-result-object v3

    invoke-virtual {v3, v6}, Lavz$a;->a(Z)Lavz$a;

    move-result-object v3

    .line 363
    invoke-virtual {v3, v7}, Lavz$a;->b(Z)Lavz$a;

    move-result-object v3

    invoke-virtual {v3}, Lavz$a;->a()Lavz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;-><init>(Ljava/lang/String;ILavz;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->MORE:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    .line 332
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Personal:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Local:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Weather:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->News:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Record:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->RecordMorning:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->RecordNight:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->RecordRemind:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->SHORT:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->LONG:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->EMPTY:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->MORE:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILavz;)V
    .locals 0
    .param p3, "scheduleRingToneItem"    # Lavz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 369
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->mScheduleRingToneItem:Lavz;

    .line 370
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    const-class v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    return-object v0
.end method


# virtual methods
.method public getScheduleRingToneItem()Lavz;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->mScheduleRingToneItem:Lavz;

    return-object v0
.end method

.method public getScheduleRingtoneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->mScheduleRingToneItem:Lavz;

    invoke-virtual {v0}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    return-object v0
.end method
