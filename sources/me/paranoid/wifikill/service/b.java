package me.paranoid.wifikill.service;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import me.paranoid.wifikill.R;

/* loaded from: classes.dex */
public final class b extends BaseExpandableListAdapter implements Serializable {
    private ArrayList a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.widget.ExpandableListAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public d getGroup(int r2) {
        return (d) this.a.get(r2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.widget.ExpandableListAdapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public c getChild(int r2, int r3) {
        return (c) ((d) this.a.get(r2)).c.get(r3);
    }

    public final String a(int r4, int r5) {
        d dVar = (d) this.a.get(r4);
        if (r5 == -1) {
            return dVar.a;
        }
        c cVar = (c) dVar.c.get(r5);
        return cVar.a + cVar.b;
    }

    public final void a(String str, String str2) {
        d dVar;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
        Date date = new Date();
        Iterator it = this.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                dVar = null;
                break;
            } else {
                dVar = (d) it.next();
                if (dVar.a.equals(str)) {
                    break;
                }
            }
        }
        if (dVar == null) {
            dVar = new d(this, str, simpleDateFormat.format(date));
            this.a.add(dVar);
        }
        dVar.c.add(new c(dVar.d, dVar.a, str2, simpleDateFormat.format(date)));
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getChildId(int r3, int r4) {
        return 0L;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getChildView(int r6, int r7, boolean z, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) viewGroup.getContext().getSystemService("layout_inflater");
        c child = getChild(r6, r7);
        if (view == null) {
            view = layoutInflater.inflate(R.layout.url_child_view, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.host);
        TextView textView2 = (TextView) view.findViewById(R.id.path);
        TextView textView3 = (TextView) view.findViewById(R.id.date);
        if (textView != null) {
            textView.setText(child.a);
        }
        textView2.setText(child.b);
        textView3.setText(child.c);
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getChildrenCount(int r2) {
        return ((d) this.a.get(r2)).c.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getGroupCount() {
        return this.a.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getGroupId(int r3) {
        return 0L;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getGroupView(int r5, boolean z, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) viewGroup.getContext().getSystemService("layout_inflater");
        d group = getGroup(r5);
        if (view == null) {
            view = layoutInflater.inflate(R.layout.url_group_view, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.host);
        TextView textView2 = (TextView) view.findViewById(R.id.date);
        textView.setText(group.a);
        textView2.setText(group.b);
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean isChildSelectable(int r2, int r3) {
        return true;
    }
}
