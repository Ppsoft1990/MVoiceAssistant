.class public Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ScheduleRingToneSetActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Laxa$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$a;
    }
.end annotation


# instance fields
.field a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/tone/ListDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;

.field private e:Lawz;

.field private f:Lawj;

.field private final g:I

.field private h:Landroid/os/Handler;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    .line 313
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->g:I

    .line 315
    new-instance v0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$2;-><init>(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->h:Landroid/os/Handler;

    .line 326
    new-instance v0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$3;-><init>(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->setTitleBarVisible(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->setTitleBarBg()V

    .line 130
    const-string/jumbo v0, "\u97f3\u4e50\u94c3\u58f0"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->setTitleName(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "style_title_white"

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->setTitleNameStyle(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "image.but_back_nor"

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->setTitleLeftButtonImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->setSeperatorButton(I)V

    .line 135
    const v0, 0x7f0b05cb

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d:Landroid/widget/ListView;

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 138
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 236
    const-string/jumbo v0, "ScheduleRingToneSetActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPlayTone |  uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 238
    invoke-virtual {v0, p1, v1, v2}, Laxa;->a(Landroid/net/Uri;II)V

    .line 239
    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/tone/ListDataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d()V

    .line 192
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 194
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v2

    .line 195
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->c()I

    move-result v3

    .line 194
    invoke-virtual {v2, v3}, Laxa;->a(I)Landroid/net/Uri;

    move-result-object v1

    .line 196
    if-nez v1, :cond_1

    .line 197
    const-string/jumbo v2, "ScheduleRingToneSetActivity"

    const-string/jumbo v3, "playRingTone uri is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p1, v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a(Landroid/net/Uri;)V

    .line 202
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 203
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    const v2, 0x7f0c01f2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "tts":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 206
    .end local v0    # "tts":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 207
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    .line 206
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 209
    :cond_4
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 210
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8
    .param p1, "tts"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 218
    const-string/jumbo v1, "ScheduleRingToneSetActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPlayTtsAndTone | tts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x1

    .line 220
    invoke-static {v1}, Lasa;->a(I)Z

    move-result v7

    .line 221
    .local v7, "isOfflineSpeechOk":Z
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lhl;->c()Z

    move-result v0

    .line 223
    .local v0, "isNetAvailable":Z
    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f:Lawj;

    new-instance v3, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$1;

    invoke-direct {v3, p0, p2}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$1;-><init>(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;Landroid/net/Uri;)V

    const-wide/16 v4, 0x0

    .line 231
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c()Landroid/os/Bundle;

    move-result-object v6

    move-object v2, p1

    .line 224
    invoke-virtual/range {v1 .. v6}, Lawj;->a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V

    .line 233
    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 150
    const-string/jumbo v2, "android_asset://ringtone/notice.mp3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    .local v1, "uri1":Landroid/net/Uri;
    new-instance v0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    const-string/jumbo v2, "\u55d2\u94c3\u58f0"

    invoke-direct {v0, v2, v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v0, "item1":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 154
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Lawz;

    invoke-direct {v2, p0}, Lawz;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e:Lawz;

    .line 158
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e:Lawz;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e:Lawz;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Lawz;->a(Ljava/util/List;)V

    .line 160
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e()V

    .line 162
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v2

    invoke-virtual {v2, p0}, Laxa;->a(Laxa$a;)V

    .line 163
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v2

    invoke-virtual {v2}, Laxa;->a()V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d()V

    return-void
.end method

.method private c()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "local"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v1, "stream"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 258
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0}, Laxa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0}, Laxa;->b()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f:Lawj;

    invoke-virtual {v0}, Lawj;->a()V

    .line 263
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 299
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e:Lawz;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-virtual {v3, v4}, Lawz;->a(Ljava/util/List;)V

    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "selectPosition":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 304
    .local v1, "info":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a(Z)V

    .line 306
    move v2, v0

    .line 310
    .end local v1    # "info":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e:Lawz;

    invoke-virtual {v3, v2}, Lawz;->a(I)V

    .line 311
    return-void

    .line 302
    .restart local v1    # "info":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v0, "data":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e:Lawz;

    invoke-virtual {v3}, Lawz;->a()I

    move-result v2

    .line 358
    .local v2, "selectPosition":I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 360
    .local v1, "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    const-string/jumbo v3, "CURRENT_SELECT_RINGTONE_TYPE"

    .line 361
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string/jumbo v3, "CURRENT_SELECT_RINGTONE_DATA"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    const/16 v3, 0x3ea

    invoke-virtual {p0, v3, v0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->setResult(ILandroid/content/Intent;)V

    .line 367
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/tone/ListDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "toneInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/tone/ListDataItem;>;"
    const/4 v6, 0x1

    .line 272
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 276
    .local v1, "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 282
    .local v0, "info":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 283
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a(Z)V

    .line 290
    :cond_3
    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 291
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 295
    .end local v0    # "info":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    .end local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->h:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f()V

    .line 377
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onBackPressed()V

    .line 378
    return-void
.end method

.method protected onClickTitleLeftButton()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f()V

    .line 383
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onClickTitleLeftButton()V

    .line 384
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v3, "schedule_type"

    .line 70
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "scheduleType":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 73
    const-string/jumbo v3, "CURRENT_SELECT_RINGTONE_NAME"

    .line 74
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->b:Ljava/lang/String;

    .line 76
    .end local v2    # "scheduleType":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0300f5

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->setContentView(I)V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v3, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v3, "com.iflytek.cmccACTION_ALARM_ALERT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, p0, v4, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    new-instance v3, Lawj;

    invoke-direct {v3, p0}, Lawj;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f:Lawj;

    .line 87
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a()V

    .line 88
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->b()V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 389
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d()V

    .line 390
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0}, Laxa;->c()V

    .line 391
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0, v1}, Laxa;->a(Laxa$a;)V

    .line 392
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f:Lawj;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f:Lawj;

    invoke-virtual {v0}, Lawj;->b()V

    .line 394
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f:Lawj;

    .line 397
    :cond_0
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 398
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->finish()V

    .line 399
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e:Lawz;

    invoke-virtual {v2}, Lawz;->a()I

    move-result v0

    .line 170
    .local v0, "lastSelected":I
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->e:Lawz;

    invoke-virtual {v2, p3}, Lawz;->a(I)V

    .line 171
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->c:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 172
    .local v1, "newRingTone":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    if-ne v0, p3, :cond_2

    .line 173
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v2

    invoke-virtual {v2}, Laxa;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->f:Lawj;

    .line 174
    invoke-virtual {v2}, Lawj;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d()V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Lcom/iflytek/viafly/schedule/tone/ListDataItem;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Lcom/iflytek/viafly/schedule/tone/ListDataItem;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->d()V

    .line 372
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 373
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method
