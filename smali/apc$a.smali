.class Lapc$a;
.super Landroid/os/Handler;
.source "RequestMonitorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lapc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lapc;)V
    .locals 1
    .param p1, "helper"    # Lapc;

    .prologue
    .line 138
    invoke-static {p1}, Lapc;->c(Lapc;)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lapc$a;->a:Ljava/lang/ref/WeakReference;

    .line 140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 144
    iget-object v9, p0, Lapc$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapc;

    .line 145
    .local v3, "helper":Lapc;
    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lapd;

    if-eqz v9, :cond_0

    .line 151
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lapd;

    .line 152
    .local v4, "monitorInfo":Lapd;
    const-string/jumbo v9, "RequestMonitorHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "new monitor info coming. the status is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lapd;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {v3, v4}, Lapc;->a(Lapc;Lapd;)V

    goto :goto_0

    .line 157
    .end local v4    # "monitorInfo":Lapd;
    :pswitch_1
    invoke-static {v3}, Lapc;->d(Lapc;)V

    goto :goto_0

    .line 160
    :pswitch_2
    const-string/jumbo v9, "RequestMonitorHelper"

    const-string/jumbo v10, "upload monitor info success."

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lapc;->a()Lapc;

    move-result-object v9

    invoke-static {v9}, Lapc;->f(Lapc;)Lwf;

    move-result-object v9

    invoke-static {}, Lapc;->a()Lapc;

    move-result-object v10

    invoke-static {v10}, Lapc;->e(Lapc;)I

    move-result v10

    invoke-virtual {v9, v10}, Lwf;->b(I)I

    .line 162
    const-string/jumbo v9, "RequestMonitorHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "delete "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lapc;->a()Lapc;

    move-result-object v11

    invoke-static {v11}, Lapc;->e(Lapc;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uploaded item from file cache."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmcc.IFLY_LAST_UPLOAD_REQUEST_MONITOR_DATA_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v10, v12, v13}, Lil;->a(Ljava/lang/String;J)V

    .line 164
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lapc;->a(Lapc;Z)Z

    .line 165
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lapc;->a(Lapc;I)I

    goto/16 :goto_0

    .line 168
    :pswitch_3
    const-string/jumbo v9, "RequestMonitorHelper"

    const-string/jumbo v10, "upload monitor info fail, stop upload today."

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 172
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 173
    .local v8, "year":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 174
    .local v5, "month":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 175
    .local v2, "day":I
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 176
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 178
    const/4 v9, 0x5

    invoke-virtual {v0, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 179
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 180
    .local v6, "nextUploadTime":J
    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, v7, v9}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "date":Ljava/lang/String;
    const-string/jumbo v9, "RequestMonitorHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "next upload time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmcc.IFLY_NEXT_UPLOAD_REQUEST_MONITOR_DATA_TIME"

    invoke-virtual {v9, v10, v6, v7}, Lil;->a(Ljava/lang/String;J)V

    .line 183
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lapc;->a(Lapc;Z)Z

    .line 184
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lapc;->a(Lapc;I)I

    goto/16 :goto_0

    .line 187
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "day":I
    .end local v5    # "month":I
    .end local v6    # "nextUploadTime":J
    .end local v8    # "year":I
    :pswitch_4
    const-string/jumbo v9, "RequestMonitorHelper"

    const-string/jumbo v10, "upload monitor info fail."

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lapc;->a(Lapc;Z)Z

    .line 189
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lapc;->a(Lapc;I)I

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
