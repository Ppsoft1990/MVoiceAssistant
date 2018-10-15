.class public Lcom/iflytek/greenplug/common/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final ANDROID_DATA_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX:[C

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final VALID_JAVA_IDENTIFIER:Ljava/lang/String; = "(\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*\\.)*\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "(\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*\\.)*\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/Utils;->ANDROID_DATA_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/Utils;->HEX:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static md5([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 25
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 26
    .local v0, "digest":[B
    invoke-static {v0}, Lcom/iflytek/greenplug/common/utils/Utils;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 30
    .end local v0    # "digest":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "Md5 Fail"

    invoke-static {v3, v4, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 36
    aget-byte v2, p0, v1

    .line 37
    .local v2, "v":I
    sget-object v3, Lcom/iflytek/greenplug/common/utils/Utils;->HEX:[C

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    sget-object v3, Lcom/iflytek/greenplug/common/utils/Utils;->HEX:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "v":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static validateJavaIdentifier(Ljava/lang/String;)Z
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lcom/iflytek/greenplug/common/utils/Utils;->ANDROID_DATA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
