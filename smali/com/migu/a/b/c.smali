.class public Lcom/migu/a/b/c;
.super Ljava/lang/Object;
.source "Lollipop_mr1DualModeSupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/a/b/f;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "getSubscriberId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 95
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 96
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/migu/a/b/c;->e(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_1
    move-exception v0

    .line 102
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :catch_2
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 106
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 109
    :cond_0
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/a/b/f;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p5}, Lcom/migu/a/b/c;->d(I)Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 140
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/a/b/f;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p6}, Lcom/migu/a/b/c;->d(I)Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 146
    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/a/b/f;
        }
    .end annotation

    .prologue
    .line 20
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 23
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "getSimCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 24
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    return v0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 29
    :catch_1
    move-exception v0

    .line 31
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 32
    :catch_2
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 35
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 38
    :cond_0
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d(I)Landroid/telephony/SmsManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/a/b/f;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    const-class v0, Landroid/telephony/SmsManager;

    const-string/jumbo v1, "getSmsManagerForSubscriptionId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 119
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/migu/a/b/c;->e(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :catch_1
    move-exception v0

    .line 125
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :catch_2
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 129
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 132
    :cond_0
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/a/b/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 48
    if-nez p0, :cond_0

    .line 50
    :try_start_0
    const-string/jumbo v0, "com.android.internal.telephony.PhoneConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "SUB1"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 61
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 63
    const-string/jumbo v1, "android.telephony.SubscriptionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getSubId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 66
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 51
    :cond_0
    if-ne p0, v0, :cond_1

    .line 53
    const-string/jumbo v0, "com.android.internal.telephony.PhoneConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "SUB2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 56
    const-string/jumbo v0, "com.android.internal.telephony.PhoneConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "SUB3"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cardIndex can only be 0,1,2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 67
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :catch_2
    move-exception v0

    .line 75
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_3
    move-exception v0

    .line 78
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :catch_4
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 82
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 83
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 85
    :cond_3
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
