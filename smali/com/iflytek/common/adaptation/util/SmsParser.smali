.class public Lcom/iflytek/common/adaptation/util/SmsParser;
.super Ljava/lang/Object;
.source "SmsParser.java"


# static fields
.field public static final MODE_CDMA:I = 0x2

.field public static final MODE_GSM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmsParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 1
    .param p0, "pdu"    # [B

    .prologue
    .line 198
    invoke-static {p0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method private static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    .line 166
    const-string/jumbo v2, "SmsParser"

    const-string/jumbo v3, "createFromPdu"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-static {p0}, Lcom/iflytek/common/adaptation/util/SmsParser;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 172
    :cond_0
    invoke-static {p0, p1}, Lcom/iflytek/common/adaptation/util/SmsParser;->createFromPduWithFormat([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/iflytek/common/adaptation/exception/SmsParserException;

    invoke-direct {v2, v0}, Lcom/iflytek/common/adaptation/exception/SmsParserException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private static createFromPdu8([BI)Landroid/telephony/SmsMessage;
    .locals 13
    .param p0, "pdu"    # [B
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    .line 76
    const-string/jumbo v9, "SmsParser"

    const-string/jumbo v10, "createFromPdu |from createFromGsmPdu"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v7, 0x0

    .line 78
    .local v7, "sms":Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    .line 79
    .local v2, "clsName":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v9, p1, :cond_0

    .line 80
    const-string/jumbo v2, "com.android.internal.telephony.cdma.SmsMessage"

    .line 86
    :goto_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 87
    .local v3, "clsSmsMessage":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "createFromPdu"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [B

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 89
    .local v5, "createFromPdu":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    const-string/jumbo v9, "com.android.internal.telephony.SmsMessageBase"

    .line 91
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, "SmsMessageBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 94
    .local v8, "wrappedMessage":Ljava/lang/Object;
    const-class v9, Landroid/telephony/SmsMessage;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    .line 95
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 96
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/telephony/SmsMessage;>;"
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 97
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 98
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/telephony/SmsMessage;

    move-object v7, v0

    .line 99
    const-string/jumbo v9, "SmsParser"

    const-string/jumbo v10, "createFromPdu |from createFromGsmPdu -- success"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-object v7

    .line 82
    .end local v1    # "SmsMessageBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clsSmsMessage":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/telephony/SmsMessage;>;"
    .end local v5    # "createFromPdu":Ljava/lang/reflect/Method;
    .end local v8    # "wrappedMessage":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "com.android.internal.telephony.gsm.SmsMessage"

    goto :goto_0

    .line 100
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/iflytek/common/adaptation/exception/SmsParserException;

    invoke-direct {v9, v6}, Lcom/iflytek/common/adaptation/exception/SmsParserException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method

.method private static createFromPduWithFormat([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 8
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string/jumbo v4, "SmsParser"

    const-string/jumbo v5, "createFromPduWithFormat"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v3, 0x0

    .line 185
    .local v3, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    const-class v0, Landroid/telephony/SmsMessage;

    .line 186
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "createFromPdu"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 188
    .local v1, "createFromPdu":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v1, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    check-cast v3, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "createFromPdu":Ljava/lang/reflect/Method;
    .restart local v3    # "sms":Landroid/telephony/SmsMessage;
    :goto_0
    return-object v3

    .line 190
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SmsParser"

    const-string/jumbo v5, "createFromPduByFormat error, call createFromPdu"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p0}, Lcom/iflytek/common/adaptation/util/SmsParser;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    .restart local v3    # "sms":Landroid/telephony/SmsMessage;
    goto :goto_0
.end method

.method private static createMessageFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    const-string/jumbo v3, "SmsParser"

    const-string/jumbo v4, "createMessageFrom"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    const-string/jumbo v3, "android.provider.Telephony$Sms$Intents"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "getMessagesFromIntent"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 123
    .local v1, "getMessagesFromIntent":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-static {v1, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/telephony/SmsMessage;

    move-object v2, v3

    check-cast v2, [Landroid/telephony/SmsMessage;

    .line 126
    return-object v2
.end method

.method private static createMessageFromPdu(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    if-nez p0, :cond_1

    .line 161
    :cond_0
    return-object v3

    .line 142
    :cond_1
    const-string/jumbo v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, [Ljava/lang/Object;

    .line 143
    .local v2, "messages":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-eqz v7, :cond_0

    .line 147
    const-string/jumbo v7, "format"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "format":Ljava/lang/String;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 150
    .local v5, "pduObjs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_2

    .line 151
    aget-object v7, v2, v1

    check-cast v7, [B

    check-cast v7, [B

    aput-object v7, v5, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_2
    array-length v7, v5

    new-array v6, v7, [[B

    .line 154
    .local v6, "pdus":[[B
    array-length v4, v6

    .line 155
    .local v4, "pduCount":I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 156
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    .line 157
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 158
    aget-object v7, v6, v1

    invoke-static {v7, v0}, Lcom/iflytek/common/adaptation/util/SmsParser;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static createMessages(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    .line 30
    const-string/jumbo v2, "SmsParser"

    const-string/jumbo v3, "createMessage"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-static {p0}, Lcom/iflytek/common/adaptation/util/SmsParser;->createMessageFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SmsParser"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    const-string/jumbo v2, "SmsParser"

    const-string/jumbo v3, "createMessage | createMessageFromIntent error, so call createMessageFromPdu"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p0}, Lcom/iflytek/common/adaptation/util/SmsParser;->createMessageFromPdu(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public static createMessages(Landroid/content/Intent;I)[Landroid/telephony/SmsMessage;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/common/adaptation/exception/SmsParserException;
        }
    .end annotation

    .prologue
    .line 53
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .local v6, "sdk":I
    const/16 v7, 0xe

    if-lt v6, v7, :cond_1

    .line 55
    invoke-static {p0}, Lcom/iflytek/common/adaptation/util/SmsParser;->createMessages(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 71
    :cond_0
    return-object v2

    .line 58
    :cond_1
    const-string/jumbo v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v1, v7

    check-cast v1, [Ljava/lang/Object;

    .line 59
    .local v1, "messages":[Ljava/lang/Object;
    array-length v7, v1

    new-array v4, v7, [[B

    .line 61
    .local v4, "pduObjs":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v1

    if-ge v0, v7, :cond_2

    .line 62
    aget-object v7, v1, v0

    check-cast v7, [B

    check-cast v7, [B

    aput-object v7, v4, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    array-length v7, v4

    new-array v5, v7, [[B

    .line 65
    .local v5, "pdus":[[B
    array-length v3, v5

    .line 66
    .local v3, "pduCount":I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 67
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    .line 68
    aget-object v7, v4, v0

    aput-object v7, v5, v0

    .line 69
    aget-object v7, v5, v0

    invoke-static {v7, p1}, Lcom/iflytek/common/adaptation/util/SmsParser;->createFromPdu8([BI)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v2, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
