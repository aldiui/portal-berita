import React from "react";
import { Link, Head } from "@inertiajs/inertia-react";
import Navbar from "@/Components/Homepage/Navbar";
import Newslist from "@/Components/Homepage/Newslist";
import Paginator from "@/Components/Homepage/Paginator";

export default function Homepage(props) {
    return (
        <div className="min-h-screen bg-teal-50">
            <Head title={props.title} />
            <Navbar user={props.auth.user} />
            <div className="flex justify-center flex-wrap gap-6 p-6">
                <Newslist news={props.news.data} />
            </div>
            <div className="flex justify-center items-center py-8">
                <Paginator meta={props.news.meta} />
            </div>
        </div>
    );
}
