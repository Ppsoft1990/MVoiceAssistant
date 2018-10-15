.class public Lwj;
.super Ljava/lang/Object;
.source "CmccFocusMap.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lwj;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "focus"    # Ljava/lang/String;
    .param p1, "defalut"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v3, Lwj;->a:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 77
    invoke-static {}, Lwj;->a()V

    .line 79
    :cond_0
    move-object v2, p0

    .line 80
    .local v2, "tmpFocus":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 81
    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 82
    .local v1, "firstEnd":I
    if-lez v1, :cond_1

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 86
    .end local v1    # "firstEnd":I
    :cond_1
    sget-object v3, Lwj;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "cpaCode":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 90
    .end local p1    # "defalut":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defalut":Ljava/lang/String;
    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method private static declared-synchronized a()V
    .locals 4

    .prologue
    .line 24
    const-class v1, Lwj;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lwj;->a:Ljava/util/HashMap;

    .line 25
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "telephone"

    const-string/jumbo v3, "LX_100001"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "message"

    const-string/jumbo v3, "LX_100002"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "contacts"

    const-string/jumbo v3, "LX_100003"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "contactscreate"

    const-string/jumbo v3, "LX_100003"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "contactssend"

    const-string/jumbo v3, "LX_100004"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "schedule"

    const-string/jumbo v3, "LX_100005"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "music"

    const-string/jumbo v3, "LX_100006"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "app"

    const-string/jumbo v3, "LX_100007"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "applaunch"

    const-string/jumbo v3, "LX_100007"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "appsearch"

    const-string/jumbo v3, "LX_100008"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "website"

    const-string/jumbo v3, "LX_100009"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "restaurant"

    const-string/jumbo v3, "LX_100124"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "other"

    const-string/jumbo v3, "LX_100011"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "train"

    const-string/jumbo v3, "LX_100012"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "flight"

    const-string/jumbo v3, "LX_100013"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "hotel"

    const-string/jumbo v3, "LX_100014"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "stock"

    const-string/jumbo v3, "LX_100015"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "telephone_fee"

    const-string/jumbo v3, "LX_100115"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "lottery"

    const-string/jumbo v3, "LX_100017"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "lbs"

    const-string/jumbo v3, "LX_100018"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "map"

    const-string/jumbo v3, "LX_100019"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "news"

    const-string/jumbo v3, "LX_100126"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "translation"

    const-string/jumbo v3, "LX_100021"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "dialog"

    const-string/jumbo v3, "LX_100022"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "dialogjoke"

    const-string/jumbo v3, "LX_100040"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "weather"

    const-string/jumbo v3, "LX_100023"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "data_transfer"

    const-string/jumbo v3, "LX_100115"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "telephone_credits"

    const-string/jumbo v3, "LX_100025"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "driver_point"

    const-string/jumbo v3, "LX_100026"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "motor_violation"

    const-string/jumbo v3, "LX_100027"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "v_cinema"

    const-string/jumbo v3, "LX_100125"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "cinemas"

    const-string/jumbo v3, "LX_100029"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "email"

    const-string/jumbo v3, "LX_100030"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "picture"

    const-string/jumbo v3, "LX_100031"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "novel"

    const-string/jumbo v3, "LX_100032"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "microblog"

    const-string/jumbo v3, "LX_100033"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "local_search"

    const-string/jumbo v3, "LX_100035"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "messagesms"

    const-string/jumbo v3, "LX_500004"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "microblogsms"

    const-string/jumbo v3, "LX_500004"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "video"

    const-string/jumbo v3, "LX_100039"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "smarthome"

    const-string/jumbo v3, "LX_100048"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "group_smart"

    const-string/jumbo v3, "LX_100048"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lwj;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "dialogva_cqa"

    const-string/jumbo v3, "LX_100049"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v1

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
