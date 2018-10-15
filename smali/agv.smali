.class public Lagv;
.super Ljava/lang/Object;
.source "HomeBlackboard.java"


# static fields
.field private static a:Lagz;

.field private static b:Lcom/iflytek/viafly/HomeRootView;

.field private static c:Lahw;

.field private static d:Lahf;

.field private static e:Lahd;

.field private static f:Lahg;

.field private static g:Lahk;

.field private static h:Lagx;

.field private static i:Lahq;

.field private static j:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

.field private static k:Lahp;

.field private static l:Lagy;

.field private static m:Lahe;

.field private static n:Lahh;

.field private static o:Lahi;

.field private static p:Lqh;

.field private static q:Lahc;

.field private static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Z

.field private static u:I

.field private static v:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lagv;->r:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lagv;->s:Ljava/util/Map;

    .line 56
    sput-boolean v1, Lagv;->t:Z

    .line 58
    sput v1, Lagv;->u:I

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lagv;->v:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 235
    sput p0, Lagv;->u:I

    .line 236
    return-void
.end method

.method public static a(Lagx;)V
    .locals 0
    .param p0, "cmccAuthenHelper"    # Lagx;

    .prologue
    .line 163
    sput-object p0, Lagv;->h:Lagx;

    .line 164
    return-void
.end method

.method public static a(Lagy;)V
    .locals 0
    .param p0, "dialSmsHelper"    # Lagy;

    .prologue
    .line 195
    sput-object p0, Lagv;->l:Lagy;

    .line 196
    return-void
.end method

.method public static a(Lagz;)V
    .locals 0
    .param p0, "homeFrameHelper"    # Lagz;

    .prologue
    .line 107
    sput-object p0, Lagv;->a:Lagz;

    .line 108
    return-void
.end method

.method public static a(Lahc;)V
    .locals 0
    .param p0, "headsetHelper"    # Lahc;

    .prologue
    .line 251
    sput-object p0, Lagv;->q:Lahc;

    .line 252
    return-void
.end method

.method public static a(Lahd;)V
    .locals 0
    .param p0, "lbsHelper"    # Lahd;

    .prologue
    .line 139
    sput-object p0, Lagv;->e:Lahd;

    .line 140
    return-void
.end method

.method public static a(Lahe;)V
    .locals 0
    .param p0, "lauguageHelper"    # Lahe;

    .prologue
    .line 203
    sput-object p0, Lagv;->m:Lahe;

    .line 204
    return-void
.end method

.method public static a(Lahf;)V
    .locals 0
    .param p0, "lockScreenGuideHelper"    # Lahf;

    .prologue
    .line 131
    sput-object p0, Lagv;->d:Lahf;

    .line 132
    return-void
.end method

.method public static a(Lahg;)V
    .locals 0
    .param p0, "musicHelper"    # Lahg;

    .prologue
    .line 147
    sput-object p0, Lagv;->f:Lahg;

    .line 148
    return-void
.end method

.method public static a(Lahh;)V
    .locals 0
    .param p0, "networkHelper"    # Lahh;

    .prologue
    .line 211
    sput-object p0, Lagv;->n:Lahh;

    .line 212
    return-void
.end method

.method public static a(Lahi;)V
    .locals 0
    .param p0, "newUserGuideHelper"    # Lahi;

    .prologue
    .line 219
    sput-object p0, Lagv;->o:Lahi;

    .line 220
    return-void
.end method

.method public static a(Lahk;)V
    .locals 0
    .param p0, "pluginInstallHelper"    # Lahk;

    .prologue
    .line 155
    sput-object p0, Lagv;->g:Lahk;

    .line 156
    return-void
.end method

.method public static a(Lahp;)V
    .locals 0
    .param p0, "homeSpeechHelper"    # Lahp;

    .prologue
    .line 187
    sput-object p0, Lagv;->k:Lahp;

    .line 188
    return-void
.end method

.method public static a(Lahq;)V
    .locals 0
    .param p0, "splashScreenHelper"    # Lahq;

    .prologue
    .line 171
    sput-object p0, Lagv;->i:Lahq;

    .line 172
    return-void
.end method

.method public static a(Lahw;)V
    .locals 0
    .param p0, "homeHandler"    # Lahw;

    .prologue
    .line 123
    sput-object p0, Lagv;->c:Lahw;

    .line 124
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/HomeRootView;)V
    .locals 0
    .param p0, "homeRootView"    # Lcom/iflytek/viafly/HomeRootView;

    .prologue
    .line 115
    sput-object p0, Lagv;->b:Lcom/iflytek/viafly/HomeRootView;

    .line 116
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;)V
    .locals 0
    .param p0, "wakeupHelper"    # Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    .prologue
    .line 179
    sput-object p0, Lagv;->j:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    .line 180
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "channelId"    # Ljava/lang/String;

    .prologue
    .line 223
    sget-object v0, Lagv;->r:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public static a(Lqh;)V
    .locals 0
    .param p0, "browserHelper"    # Lqh;

    .prologue
    .line 243
    sput-object p0, Lagv;->p:Lqh;

    .line 244
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "isHomeFirstIn"    # Z

    .prologue
    .line 99
    sput-boolean p0, Lagv;->t:Z

    .line 100
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 0
    .param p0, "arr"    # [Ljava/lang/String;

    .prologue
    .line 91
    sput-object p0, Lagv;->v:[Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lagv;->v:[Ljava/lang/String;

    return-object v0
.end method

.method public static b()Lagz;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lagv;->a:Lagz;

    return-object v0
.end method

.method public static c()Lcom/iflytek/viafly/HomeRootView;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lagv;->b:Lcom/iflytek/viafly/HomeRootView;

    return-object v0
.end method

.method public static d()Lahw;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lagv;->c:Lahw;

    return-object v0
.end method

.method public static e()Lahf;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lagv;->d:Lahf;

    return-object v0
.end method

.method public static f()Lahd;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lagv;->e:Lahd;

    return-object v0
.end method

.method public static g()Lahg;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lagv;->f:Lahg;

    return-object v0
.end method

.method public static h()Lahk;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lagv;->g:Lahk;

    return-object v0
.end method

.method public static i()Lagx;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lagv;->h:Lagx;

    return-object v0
.end method

.method public static j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lagv;->j:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    return-object v0
.end method

.method public static k()Lahp;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lagv;->k:Lahp;

    return-object v0
.end method

.method public static l()Lagy;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lagv;->l:Lagy;

    return-object v0
.end method

.method public static m()Lahe;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lagv;->m:Lahe;

    return-object v0
.end method

.method public static n()Lahh;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lagv;->n:Lahh;

    return-object v0
.end method

.method public static o()Lahi;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lagv;->o:Lahi;

    return-object v0
.end method

.method public static p()I
    .locals 1

    .prologue
    .line 231
    sget v0, Lagv;->u:I

    return v0
.end method

.method public static q()Lqh;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lagv;->p:Lqh;

    return-object v0
.end method

.method public static r()Lahc;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lagv;->q:Lahc;

    return-object v0
.end method
